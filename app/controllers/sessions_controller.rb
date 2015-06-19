class SessionsController < ApplicationController
  def new
  end

  def show
      @user = User.where(id: session[:user_id])[0]
      redirect_to root_path unless session[:user_id]
  end

  def create
    # begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      redirect_to sessions_show_path
      flash[:success] = "Welcome, #{@user["first_name"]}!"
      current_user
      save_user_location
      # Rails.logger @auth
    # rescue
    #   flash[:warning] = "There was an error while trying to authenticate you..."
    # end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_path
      flash[:success] = "You have succesfully logged out!"
  end

  def auth_failure
    redirect_to root_path
  end
end
