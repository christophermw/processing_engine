class TriggersController < ApplicationController

  before_action :current_user

  def new
    @project = Project.find(params[:project_id])
    @trigger = @project.triggers.new
    send_add_trigger_popup_html
  end

  def edit
    @project = Project.find(params[:project_id])
    @trigger = @project.triggers.find(params[:id])
    send_add_trigger_popup_html
  end

  def send_add_trigger_popup_html
    @tags = @project.tags
    @fields = @project.fields
    @conditions = @trigger.conditions
    @delayed_triggers = @trigger.delayed_triggers.includes(:conditions)
    @reset_triggers = @trigger.reset_triggers.includes(:conditions)
    @email_action = @trigger.email_action
    @email_action_data = @email_action.try(:data) || {}
    @lcm_insert_action = @trigger.lcm_insert_action
    @lcm_insert_action_data = @lcm_insert_action.try(:data) || {}
    redis_cache = @organization.redis_cache
    @transactional_mailings = redis_cache['transactional_mailings'] || {}
    @transactional_mailing_fields = redis_cache['transactional_mailing_fields'] || {}
    @transactional_mailing_fields.default = []
    @programs = redis_cache['programs'] || {}
    @internal_data_sources = redis_cache['internal_data_sources'] || {}
    @data_source_fields = redis_cache['data_source_fields'] || {}
    @data_source_fields.default = []
    @extensions = redis_cache['extensions'] || {}
    respond_to do |format|
      format.json do
        render json: { html: render_to_string(partial: 'projects/trigger/add_trigger_popup', formats: ['html']) }
      end
    end
  end
end
