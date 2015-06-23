class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      current_user
      save_user_location
      flash[:success] = "Welcome, #{@user["first_name"]}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
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
