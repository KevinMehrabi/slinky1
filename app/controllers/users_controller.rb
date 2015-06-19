class UsersController < ApplicationController
  before_action :authorized?
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order('created_at DESC')
    end
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
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
