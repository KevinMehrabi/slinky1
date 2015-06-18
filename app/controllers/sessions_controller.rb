class SessionsController < ApplicationController
  def new
  end

  def show
      @auth = session['auth']
      redirect_to root_path unless session['auth']
  end

  def create
    begin
      @auth = User.from_omniauth(request.env['omniauth.auth'])
      session['auth'] = @auth
      redirect_to sessions_show_path
    rescue
    end
  end

  def destroy
      session['auth'] = nil
      redirect_to root_path
  end
end