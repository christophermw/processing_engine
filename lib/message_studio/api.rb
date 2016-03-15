require 'base64'

class MessageStudio::API
  attr_accessor :organization

  FILTERED_FIELDS    = ["email_status", "created_on", "last_modified", "__sm_audience_id"]
  MAX_RETRY_COUNT    = 5

  def initialize(opts={})
    defaults = {
      use_password: false,
      ms_host: nil,
      use_sso: false
    }
    opts = opts.reverse_merge(defaults)
    @organization = opts[:organization]
    @username = opts[:username]
    @sso_token = opts[:password]
    @suborganization = opts[:suborganization]
    @use_password = opts[:use_password]
    @use_sso = opts[:use_sso]
    ms_domain = opts[:ms_host].presence || '10.0.5.43'
    @api_opts = {
      "endpoint_url" => "https://#{ms_domain}:4443/sm/services/mailing/2009/03/02",
      "username" => @username,
      "password" => @sso_token,
      "organization" => @organization,
      "sso" => @use_sso,
      "suborganization" => @suborganization
    }
    @api = WsseAuthHeader::sm_service(@api_opts)
  end

  def objects_hash(object, opts={}, object_ids=nil)
    field_name = opts[:field_name] || 'name'
    if object_ids.nil?
      response = list_objects(object, opts)
      object_ids = response.collect{|oid| oid.id.to_i}
    end
    if object == 'data_source' && opts[:filter]
      # Get requests require that the filter value be prepended to the object for data_sources
      if opts[:filter][:value].to_s.downcase == 'ids_extension'
        object = 'internal_data_source'
      else
        object = "#{opts[:filter][:value].to_s.downcase}_data_source"
      end
    end
    objs = get_objects(object, object_ids)
    objs = sort_objects(objs, opts[:sort_by], opts[:reverse_sort])
    return ids_and_field_hash(objs, field_name)
  end

  def get_sso_token
    request = GetSingleSignOnURLRequest.new
    response_url = Timeout::timeout(10) { @api.getSingleSignOnURL(request).url }
    u = URI.parse(response_url)
    p = CGI.parse(u.query)
    p['j_password'].first
  end

  def list_objects(object, opts={})
    opts[:records_per_page] ||= 500 if Rails.env.test? # Prevent time out during testing
    request = ListRequest.new
    records_per_page = (opts[:records_per_page] || 500).to_i
    objs = Hash.new
    object = object.camelize
    request.filter = Object.const_get("#{object}Filter").new
    request.filter.recordsPerPage = records_per_page
    if object == 'Mailing'
      statuses = ['EDITING','SCHEDULED','SPEC_SCHEDULED','COMPLETED','COMPLETED_DEFERRED','ACTIVE','INITIATING_EXPORTING',
                  'INITIATING_LOADING','INITIATING_SAVED','INITIATING_SAVING','INITIATING_STARTING','INITIATING_TARGETING',
                  'INITIATING_TO_LAUNCH','INITIATING_TO_LOAD','OVERDUE','PAUSED','PAUSED_OUTBOUND','PAUSING','PAUSING_OUTBOUND',
                  'RECOVERING','RESUMING','SCHEDULED_CANCELED','SENDING','SENDING_INTERRUPTED','SENDING_STOPPED','SPEC_CANCELED',
                  'SPEC_COMPLETED','SPEC_EDITING','SPEC_FAILED','UNKNOWN']
      statusCondition = ArrayStringFilterCondition.new(statuses, FilterArrayOperator::IN) 
      request.filter.statusCondition = statusCondition
    end
    if opts[:filter]
      if opts[:filter][:approved]
        approvalCondition = ScalarBooleanFilterCondition.new(true, FilterBooleanScalarOperator::EQUAL)
        request.filter.approvalCondition = approvalCondition
      end
      if opts[:filter][:name_condition]
        nameCondition = ScalarStringFilterCondition.new(opts[:filter][:name_condition], FilterStringScalarOperator::EQUAL)
        request.filter.nameCondition = nameCondition
      end
      if opts[:filter][:login_name_condition]
        loginNameCondition = ScalarStringFilterCondition.new(opts[:filter][:login_name_condition], FilterStringScalarOperator::EQUAL)
        request.filter.loginNameCondition = loginNameCondition
      end
      if opts[:filter][:value]
        typeCondition = ScalarStringFilterCondition.new(opts[:filter][:value], FilterStringScalarOperator::EQUAL)
        request.filter.typeCondition = typeCondition
      end
      if opts[:filter][:type]
        typeCondition = ArrayStringFilterCondition.new(opts[:filter][:type], FilterArrayOperator::IN)
        request.filter.typeCondition = typeCondition
      end
      if opts[:filter][:status_condition]
        statusCondition = ArrayStringFilterCondition.new(opts[:filter][:status_condition], FilterArrayOperator::IN) 
        request.filter.statusCondition = statusCondition
      end
    end
    page = 0
    request.filter.pageNumber = page
    response = @api.list(request).objectId || []
    if opts[:records_per_page].nil?
      while response.count == (records_per_page * (page+1))
        page += 1
        request.filter.pageNumber = page
        response += @api.list(request).objectId
      end
    end
    response
  end

  def get_objects(object, ids)
    time_limit = 30
    objects = {}
    object = object.camelize
    object += 'List' if ['Suppression', 'Seed'].include?(object) # Needed because the Filter and Id are named differently
    ids.in_groups_of(20,false).each do |_ids|
      request = GetRequest.new
      _ids.each do |id|
        object_id = Object.const_get("#{object}Id").new(id)
        request << object_id
      end
      begin
        batch_response = Timeout::timeout(time_limit) { @api.get(request).getResponse }
        batch_response.to_a.each do |resp|
          begin
            objects[resp.baseObject.objectId.id.to_i] = resp.baseObject if resp.respond_to?(:baseObject)
          rescue Exception => e
            puts e.message
            NewRelic::Agent.notice_error(e)
          end
        end
      rescue
        _ids.each do |id|
          request = GetRequest.new
          object_id = Object.const_get("#{object}Id").new(id)
          request << object_id
          resp = Timeout::timeout(time_limit) { @api.get(request).getResponse.first } rescue nil
          objects[resp.baseObject.objectId.id.to_i] = resp.baseObject if resp.respond_to?(:baseObject)
        end
      end
    end
    objects
  end

  def get_object(object, id)
    id = id.to_i
    get_objects(object, [id])[id]
  end

  def get_statistic(object, id)
    statistics = Hash.new
    object = object.camelize
    request = Object.const_get("Get#{object}StatisticsRequest").new
    object_id = Object.const_get("#{object}Id").new(id)
    request.instance_variable_set("@#{object.camelize(:lower)}Id", object_id)
    @api.getStatistics(request)
  end

  def get_user_info(login, retry_count=0)
    begin
      user_ids = list_objects('user', { filter: { login_name_condition: login}}).collect(&:id)
      return get_object('user', user_ids.first)
    rescue Exception => e
      NewRelic::Agent.notice_error(e)
      nil
    end
  end

  def get_organization_id(org_name)
    response = list_objects('organization', { records_per_page: 1, filter: { name_condition: org_name} })
    response.try(:first).try(:id)
  end

  def get_organization_name(org_id)
    response = get_object('organization', org_id)
    response.try(:name)
  end

  def publish_mailing(mailing_project, mailing_record, version, org_id, dst = false)
    @mailing_project = mailing_project
    @mailing_record = mailing_record
    @version = version
    @org_id = org_id
    @dst = dst

    if mailing_project.mailing_type == 'transactional'
      @mailing = TransactionalMailing.new
      set_transactional_mailing_fields
    else
      @mailing = StandardMailing.new
      set_standard_mailing_fields
      if !(mailing_project.mailing_type == 'immediate') || version && version.schedule_config
        set_mailing_schedule
      end
    end

    set_mailing_common_fields

    create_req = CreateRequest.new
    create_req << @mailing
    @api.create(create_req)
  end

  def send_transactional_email(email_id, fields)
    txnMailingId = TransactionalMailingId.new
    txnMailingId.id = email_id.to_s

    txnMailingHandleRequest = GetTxnMailingHandleRequest.new
    # Get the mailing handle by id (though we can also do it by name if we want)
    # txnMailingHandleRequest.mailingName = email_name
    txnMailingHandleRequest.mailingId = txnMailingId
    txnMailingHandle = @api.getTxnMailingHandle(txnMailingHandleRequest)

    txnSendRequest = TxnSendRequest.new
    txnSendRequest.handle = txnMailingHandle.handle
    sendRecord = SendRecord.new

    # You will need one nameValuePair for each field in your mailing
    # (Or at least for each field for which you want to send a value)

    sendRecord.field = []
    fields.each do |k,v|
      nvp = NameValuePair.new
      nvp.name = k
      nvp.value = v
      sendRecord.field << nvp
    end

    txnSendRequest.sendRecord = [ sendRecord ]

    begin
      result = @api.txnSend(txnSendRequest)
      Rails.logger.debug "API Send Transactional Email"
      Rails.logger.debug "Email ID : #{email_id}"
      Rails.logger.debug "Fields : #{fields}"
      Rails.logger.debug "Send Email Result : #{result.inspect}"
    rescue => e
      Rails.logger.debug "API Send Transactional Email"
      Rails.logger.debug "Email ID : #{email_id}"
      Rails.logger.debug "Fields : #{fields}"
      Rails.logger.debug "API Send Email Error : #{$!}"
      Rails.logger.debug "API Send Email Error : #{$@}"
      request_params = {organization: @organization, email_id: email_id, fields: fields}
      options = {request_params: request_params}
      NewRelic::Agent.agent.error_collector.notice_error(e,options)
      raise e
    end
  end

  def upsert_record(ids_id, field_hash, data_source_type='ids')
    # TODO : Check if value is nil, if so pass in nil otherwise pass in value.to_s
    record = DataSourceRecord.new
    field_hash.each do |key, value|
      col = NameValuePair.new
      col.name = key.to_s
      col.value = value.to_s
      record.field << col
    end

    ids = data_source_type =='ids' ? InternalDataSourceId.new(ids_id.to_i) : InternalDataSourceExtnId.new(ids_id.to_i)

    upsert_request = UpsertDataSourceRecordsRequest.new
    upsert_request.dataSourceId = ids
    upsert_request.dataSourceRecord = record
    begin
      result = @api.upsertRecord(upsert_request)
      Rails.logger.debug "API Upsert Record"
      Rails.logger.debug "Params : #{ids_id}|#{field_hash}|#{data_source_type}"
      Rails.logger.debug "Result #{result.inspect}"
    rescue => e
      Rails.logger.debug "API Upsert Record"
      Rails.logger.debug "Params : #{ids_id}|#{field_hash}|#{data_source_type}"
      Rails.logger.debug "API Upsert Record Error : #{$!}"
      Rails.logger.debug "API Upsert Record Error : #{$@}"
      request_params = {organization: @organization, ids: ids_id, fields: field_hash, data_source_type: data_source_type}
      options = {request_params: request_params}
      NewRelic::Agent.agent.error_collector.notice_error(e,options)
      raise e
    end
    result
  end

  def add_to_program(program_id, primary_key, contact_id)
    Rails.logger.debug "API Add to program"
    Rails.logger.debug "Params : #{program_id}|#{primary_key}|#{contact_id}"
    program_id = ProgramId.new(program_id)
    add_to_program_request = AddProgramContactRecordsRequest.new
    add_to_program_request.programId = program_id
    contact_record = ProgramContactRecord.new(primary_key, contact_id)
    add_to_program_request.programContactRecord << contact_record
    result = @api.addRecords(add_to_program_request)
    Rails.logger.debug "Result : #{result.inspect}"
    result
  end

private
  def get_data_source(id)
    data_source = InternalDataSourceId.new(id)
    ds_get_request = GetRequest.new
    ds_get_request << data_source
    @api.get(ds_get_request)
  end

  def get_mailing_type(mailing)
    case mailing.mailing_type
    when "immediate"
      MailingType::ONE_TIME
    when "recurring"
      MailingType::RECURRING
    when "scheduled"
      MailingType::ONE_TIME
    when "transactional"
      MailingType::TRANSACTIONAL
    end
  end

  def set_transactional_mailing_fields
    @mailing.targetId = TargetId.new(@mailing_record.target_ids.first)
    @mailing.messageType = MessageType::EMAIL
  end

  def set_standard_mailing_fields
    @mailing.excludedTargetId = @mailing_record.excluded_target_ids.collect{ |id| TargetId.new(id) } if @mailing_record.excluded_target_ids.present?
    @mailing.includedTargetId = @mailing_record.target_ids.collect{ |id| TargetId.new(id) }
    @mailing.seedListId = @mailing_project.seed_ids.collect{|id| SeedListId.new(id) } if @mailing_project.seed_ids.present?
    @mailing.suppressionListId = @mailing_project.suppression_ids.collect{|id| SuppressionListId.new(id) } if @mailing_project.suppression_ids.present?
    @mailing.eliminateDuplicates = true
  end

  def get_subject
    if @version && @version.subject_line_config && @version.subject_line.present?
      @version.subject_line
    elsif @mailing_record.mailing_subject_line.present? && @version.nil?
      @mailing_record.mailing_subject_line
    else
      template = get_object('template', @mailing_record.template_id)
      template.subject rescue nil
    end
  end

  def get_from_name
    if @version && @version.from_name_config && @version.from_name.present?
      @version.from_name
    else
      template = get_object('template', @mailing_record.template_id)
      template.fromName rescue nil
    end
  end

  def sort_objects(objects, sort_field, descending)
    sort_field ||= 'modifiedTime'
    descending ||= true
    objects_hash = {}
    objects_array = objects.values
    objects_array.sort_by! {|obj| obj.try(sort_field)}
    objects_array.reverse! if descending
    objects_array.each do |object|
      objects_hash[object.objectId.id] = object
    end
    objects_hash
  end

  def ids_and_field_hash(object_hash, field_name)
    object_hash.each do |object_id, object|
      if field_name.is_a?(Array)
        object_hash[object_id] = field_name.collect do |field_name|
          field = object.send(field_name)
          if field_name.to_s.include?('Time') &&  field.present?
            field.strftime('%m/%d/%y %H:%M:%S')
          else
            field
          end
        end.join(' ')
      else
        object_hash[object_id] = object.send(field_name)
      end
    end
    object_hash
  end

  def set_mailing_common_fields
    mailing_priorities = [MailingPriority::LOW, MailingPriority::NORMAL, MailingPriority::HIGH, MailingPriority::URGENT]
    @mailing.bodyEncoding = MSEncoding::BASE64
    @mailing.fieldDelimiter = "::"
    @mailing.bounceAddressId = SystemAddressId.new(@mailing_record.bounce_address_id)
    @mailing.fromName = get_from_name
    @mailing.fromAddressId = SystemAddressId.new(@mailing_record.from_address_id)
    @mailing.replyAddressId = SystemAddressId.new(@mailing_record.reply_address_id)
    @mailing.headerEncoding = MSEncoding::EIGHT_BIT
    @mailing.isApproved = false
    @mailing.isCompliant = true
    @mailing.name = @mailing_record.mailing_name
    @mailing.outputBodyCharSet = CharSet::UTF8
    @mailing.outputHeaderCharSet = CharSet::UTF8
    @mailing.priority = mailing_priorities[@mailing_project.priority] rescue MailingPriority::NORMAL
    @mailing.rowDelimiter = "\n"
    @mailing.subject = get_subject
    @mailing.templateId = TemplateId.new(@mailing_record.template_id)
    @mailing.format = MessageFormat::HTML
    @mailing.description = @mailing_project.description
    @mailing.type = get_mailing_type(@mailing_project)
    @mailing.organizationId = OrganizationId.new(@org_id)
    @mailing.plannedLaunchDate = @mailing_project.planned_launch_date.to_s if @mailing_project.planned_launch_date
    @mailing.campaignId = CampaignId.new(@mailing_project.campaign_id) if @mailing_project.campaign_id
    @mailing.mailingClassId = MailingClassId.new(@mailing_project.server_group_id) if @mailing_project.server_group_id
  end

  def set_mailing_schedule
    tz = ActiveSupport::TimeZone.new(@mailing_project.timezone)
    schedule = SchedulableMailing::Schedule.new
    if @mailing_project.mailing_type == 'recurring'
      recurrence = SchedulableMailing::Schedule::Recurrence.new
      case @mailing_project.frequency
      when 'minutes'
        minutely_recurrence = SchedulableMailing::Schedule::Recurrence::MinutelyRecurrence.new(@mailing_project.minutely_recurrence)
        recurrence.minutelyRecurrence = minutely_recurrence
      when 'hour'
        hourly_recurrence = SchedulableMailing::Schedule::Recurrence::HourlyRecurrence.new(@mailing_project.hourly_recurrence)
        recurrence.hourlyRecurrence = hourly_recurrence
      when 'day'
        daily_recurrence = SchedulableMailing::Schedule::Recurrence::DailyRecurrence.new
        if @mailing_project.daily_every_weekday
          daily_recurrence.everyWeekDay = true
        else
          daily_recurrence.interval = @mailing_project.daily_recurrence
        end
        recurrence.dailyRecurrence = daily_recurrence
      when 'week'
        weekly_recurrence = SchedulableMailing::Schedule::Recurrence::WeeklyRecurrence.new
        weekly_recurrence.interval = @mailing_project.weekly_recurrence
        Date::DAYNAMES.each do |day|
          weekly_recurrence.day << DayOfWeek.new(day.upcase) if @mailing_project.send("weekly_on_#{day.downcase}")
        end
        recurrence.weeklyRecurrence = weekly_recurrence
      when 'month'
        if @mailing_project.month_option
          monthly_recurrence = SchedulableMailing::Schedule::Recurrence::MonthlyByDayRecurrence.new
          monthly_recurrence.interval = @mailing_project.monthly_recurrence2
          monthly_recurrence.weeklyOccurrence = WeeklyOccurrence.new(@mailing_project.monthly_week_of_month.upcase)
          monthly_recurrence.dailyOccurrence = DailyOccurrence.new(@mailing_project.monthly_day.upcase)
          recurrence.monthlyByDayRecurrence = monthly_recurrence
        else
          monthly_recurrence = SchedulableMailing::Schedule::Recurrence::MonthlyByDateRecurrence.new
          monthly_recurrence.interval = @mailing_project.monthly_recurrence
          monthly_recurrence.dayOfMonth = @mailing_project.monthly_day_of_month
          recurrence.monthlyByDateRecurrence = monthly_recurrence
        end
      when 'year'
        if @mailing_project.yearly_option
          yearly_recurrence = SchedulableMailing::Schedule::Recurrence::YearlyByDayRecurrence.new
          yearly_recurrence.month = Date::MONTHNAMES.index(@mailing_project.yearly_month2.titleize)
          yearly_recurrence.weeklyOccurrence = WeeklyOccurrence.new(@mailing_project.yearly_day_of_month.upcase)
          yearly_recurrence.dailyOccurrence = DailyOccurrence.new(@mailing_project.yearly_day.upcase)
          recurrence.yearlyByDayRecurrence = yearly_recurrence
        else
          yearly_recurrence = SchedulableMailing::Schedule::Recurrence::YearlyByDateRecurrence.new
          yearly_recurrence.month = Date::MONTHNAMES.index(@mailing_project.yearly_month.titleize)
          yearly_recurrence.day = @mailing_project.yearly_day_number_of_month
          recurrence.yearlyByDateRecurrence = yearly_recurrence
        end
      end

      case @mailing_project.mailing_end_option
      when 1
        recurrence.endAfterXMailings = @mailing_project.mailing_end_occurences
      when 2
        recurrence.endDate = @mailing_project.mailing_end_date.to_s + tz.formatted_offset if @mailing_project.mailing_end_date
      end

      schedule.recurrence = recurrence
    end
    mailing_date = @version && @version.schedule_config && !@version.mailing_date.blank? ? @version.mailing_date : @mailing_project.mailing_date
    mailing_time = @version && @version.schedule_config && !@version.mailing_time.blank? ? @version.mailing_time : @mailing_project.mailing_time
    timezone = @version && @version.schedule_config && !@version.timezone.blank? ? @version.timezone : @mailing_project.timezone
    tz = ActiveSupport::TimeZone.new(timezone)
    schedule.startDateTime = DateTime.parse(mailing_date.strftime('%Y%m%d') + mailing_time.strftime('T%H%M%S') + tz.formatted_offset(nil)).xmlschema
    @mailing.schedule = schedule
  end

  def refresh_sso_token
    @api_opts["password"] = get_sso_token
  end

  def reinitialize_api
    @api = WsseAuthHeader::sm_service(@api_opts)
  end

end
