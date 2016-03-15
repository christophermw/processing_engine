class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_js_file

  def current_user
    if @user = OrganizationUser.find_by( id: session[:user_id])
      @organization = @user.client_organization
    else
      render_login_error
    end
  end


  def render_login_error
    render :file => "#{Rails.root}/public/login_error.html", :layout => false, :status => 404
  end

  def set_js_file
    @js_file = params[:action]
  end
end
