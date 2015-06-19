class UsersController < ApplicationController
  before_action :authorized?
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by(id: current_user)
    if user.current_location
      redirect_to sessions_show_path
      flash[:success] = "current_location already exists"
    else
      user.update_attributes(user_params)
      redirect_to sessions_show_path
      flash[:success] = "Location successfully updated."
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:address, :city, :state, :zipcode)
    
  end

end
