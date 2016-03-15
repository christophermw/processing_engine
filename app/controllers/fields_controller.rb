class FieldsController < ApplicationController

  before_action :current_user

  def new
    @project = Project.find(params[:project_id])
    @field = @project.fields.new
    @field.expressions.new
    send_add_profile_field_popup_html
  end

  def edit
    @project = Project.find(params[:project_id])
    @field = @project.fields.find(params[:id])
    send_add_profile_field_popup_html
  end

  def send_add_profile_field_popup_html
    @fields = @project.fields
    @expressions = @field.expressions
    respond_to do |format|
      format.json do
        render json: { html: render_to_string(partial: 'projects/user_profile/add_profile_field_popup', formats: ['html']) }
      end
    end
  end
end
