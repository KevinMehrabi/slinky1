class UsersController < ApplicationController
  before_action :authorized?
  def index
    if !params[:search].blank? && !params[:miles].blank?
      @users = User.search(params[:search]).near([current_user.latitude, current_user.longitude], params[:miles]).order("created_at DESC").page(params[:page])
    elsif !params[:search].blank? || params[:miles].blank?
      @users = User.search(params[:search]).near([current_user.latitude, current_user.longitude], 1000000000).order("created_at DESC").page(params[:page])
    else
      @users = User.all.order('created_at DESC')
    end
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
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
