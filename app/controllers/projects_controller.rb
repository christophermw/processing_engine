class ProjectsController < ApplicationController

  before_action :current_user

  def index
    @projects = @organization.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = @organization.projects.new(project_params)
    if @project.save
      if params[:commit] == "Next"
        redirect_to tags_project_path(@project)
      else
        flash[:notice] = 'Project was successfully created.'
        render :new
      end
    else
      flash[:error] = @project.errors.full_messages.join(',')
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    render :new
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      if params[:commit] == "Next"
        redirect_to tags_project_path(@project)
      else
        flash[:notice] = 'Project was successfully saved.'
        render :new
      end
    else
      flash[:error] = @project.errors.full_messages.join(',')
      render :new
    end
  end

  def tags
    @project = Project.find(params[:id])
    @tags = @project.tags
    @fields = @project.event_fields
    @field_names_and_ids = {}
    @fields_by_name = {}
    @fields.each do |f|
      @field_names_and_ids[f.name] = f.id
      @fields_by_name[f.name] = f
    end
  end

  def update_tags
    @project = Project.find(params[:id])
    if @project.update_attributes(tag_params)
      render json: true
    else
      render json: @project.errors.full_messages.join(','), status: 500
    end
  end

  def user_profile
    @project = Project.find(params[:id])
    @fields = @project.fields.order(type: :desc)
  end

  def update_profile_fields
    @project = Project.find(params[:id])
    if @project.update_attributes(field_params)
      render json: true
    else
      render json: @project.errors.full_messages.join(','), status: 500
    end
  end

  def triggers
    @project = Project.find(params[:id])
    @tags = @project.tags
    @fields = @project.fields
    @triggers = @project.triggers.visible
    redis_cache = @organization.redis_cache
    @transactional_mailing_fields = redis_cache['transactional_mailing_fields'] || {}
    @data_source_fields = redis_cache['data_source_fields'] || {}
  end

  def update_triggers
    @project = Project.find(params[:id])
    if @project.update_attributes(trigger_params)
      render json: true
    else
      render json: @project.errors.full_messages.join(','), status: 500
    end
  end

  def data_sync
    @project = Project.find(params[:id])
  end

  def publish
    @project = Project.find(params[:id])
    @tags = @project.tags
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :time_zone)
  end

  def tag_params
    fields_attributes = [ :id, :type, :project_id, :name, :datatype, :_destroy ]
    params.require(:project).permit( tags_attributes: [ :id, :name, :description, fields_attributes: fields_attributes + [ fields_attributes: fields_attributes ], tags_fields_attributes: [:field_id] ] )
  end

  def field_params
    conditions_attributes = [:id, :field1_id, :field2_id, :operator, :operand_option, :alternate_value, :previous_condition_operator, :position, :_destroy]
    params.require(:project).permit( fields_attributes: [ :id, :name, :datatype, :type, expressions_attributes: [ :id, :operator, :operand_option, :field_id, :use_parent_id_for_field, :alternate_value, :position ], conditional_field_values_attributes: [ :id, :value, :position, :_destroy, conditions_attributes: conditions_attributes ] ] )
  end

  def trigger_params
    conditions_attributes = [:id, :field1_id, :field2_id, :operator, :operand_option, :alternate_value, :previous_condition_operator, :position, :_destroy]
    email_action_attributes = [:id, :_destroy, data: [ :mailing_id, :email_field, mapping: [:tag_field, :mailing_field ] ] ]
    lcm_insert_action_attributes = [:id, :_destroy, data: [ :program_id, :data_source_id, :extension_id, :lcm_source_option, :primary_key, :contact_id, mapping: [:tag_field, :lcm_field ] ] ]
    triggers_attributes = [ :id, :tag_id, :project_id, :name, :position, :parent_trigger_id, :delay_amount, :delay_unit, :delay_enabled, :delay_status, :delay_reset_enabled, conditions_attributes: conditions_attributes, email_action_attributes: email_action_attributes, lcm_insert_action_attributes: lcm_insert_action_attributes ]
    triggers_attributes.push(reset_triggers_attributes: triggers_attributes.dup)
    triggers_attributes.push(delayed_triggers_attributes: triggers_attributes.dup)
    params.require(:project).permit( triggers_attributes: triggers_attributes )
  end

end
