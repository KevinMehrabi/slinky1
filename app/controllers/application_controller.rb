class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def save_user_location
    if @lat_lng = cookies[:lat_lng].split("|")
      @user=@current_user
      @user.current_location=@lat_lng
      @user.save
    else
      redirect_to users_new_path
    end
  end

  include SessionsHelper

   def authorized?
  	redirect_to root_path unless current_user
  end

end
