class UsersController < ApplicationController
  before_action :authorized?

  
  def index
    if params[:search] && params[:one].present? 
      @users = User.search(params[:search]).near([current_user.latitude, current_user.longitude], params[:miles]).order("created_at DESC").page(params[:page])
    else
      @users = User.all.order('created_at DESC')
    end
  end

  def show
    @user = User.where(id: session[:user_id])[0]
    redirect_to root_path unless session[:user_id]
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by(id: current_user)
    if user.current_location
      redirect_to sessions_show_path
      flash[:success] = "Current location already exists"
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
