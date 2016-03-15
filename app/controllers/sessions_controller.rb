class SessionsController < ApplicationController

  def create
    @org_details = {organization: params[:organization], user: params[:username], version: params[:version],
                    suborganization: params[:suborganization], use_password: true}
    @client = Client.find_by(name: params[:client])

    if @client
      @organization = @client.organizations.find_or_create_by(name: params[:organization], suborganization: params[:suborganization].presence)
      @user = @organization.users.find_or_create_by(username: params[:username])
      @org_details[:ms_host] = @client.ms_api_host
      @org_details[:username] = @client.ms_username
      @org_details[:password] = @client.ms_password
      session[:user_id] = @user.id
      session[:org_details] = @org_details
      @api = MessageStudio::API.new(@org_details)
      update_user_info(@user)

      if params[:login]
        render :create_cookie
      else
        redirect_to root_path
      end
    else
      render_login_error
    end
  end

  def destroy
    reset_session
    render nothing: true
  end

private
  def update_user_info(user)
    user_info = @api.get_user_info(user.username)
    if @user.full_name.blank? && user_info
      user.full_name = "#{user_info.firstName} #{user_info.lastName}"
    end
    if user_info
      user.email = user_info.email
      user.is_super_user = user_info.isSuperUser
    end
    user.is_admin = false
    if user_info.nil?
      user.is_admin = true
    elsif Rails.env.development?
      user.is_admin = true
    else
      user.is_admin = user_info.isAdmin
    end
    user.save
  end
end