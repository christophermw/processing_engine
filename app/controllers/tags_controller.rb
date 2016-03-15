  class TagsController < ApplicationController

  skip_before_filter :set_js_file
  skip_before_filter  :verify_authenticity_token, only: [:track]

  def new
    @project = Project.find(params[:project_id])
    @tag = @project.tags.new
    send_add_tag_popup_html
  end

  def edit
    @project = Project.find(params[:project_id])
    @tag = @project.tags.find(params[:id])
    send_add_tag_popup_html
  end

  def show
    @tag = Tag.find(params[:id])
    @tag_fields = @tag.fields
    respond_to do |format|
      format.html
      format.json do
        tag_attributes = @tag.attributes
        tag_attributes['tag_fields'] = @tag_fields
        render json: tag_attributes
      end
    end
  end

  def track
    ProcessEventWorker.perform_async(params)
    send_file 'public/blank.png', type: 'image/png', disposition: 'inline'
  end

  def test
    @tag = Tag.find(params[:id])
    @tag_fields = @tag.fields
  end

  private

  def send_add_tag_popup_html
    @tag_fields = @tag.fields.includes(:fields)
    @fields = @project.event_fields
    @field_names_and_ids = {}
    @fields_by_name = {}
    @fields.each do |f|
      @field_names_and_ids[f.name] = f.id
      @fields_by_name[f.name] = f
    end
    respond_to do |format|
      format.json do
        render json: { html: render_to_string(partial: 'projects/tags/add_tag_popup', formats: ['html']) }
      end
    end
  end

end
