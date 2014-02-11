class SessionsController < ApplicationController
  def new
    redirect_to 'auth/facebook'
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Signed out!'
  end

  def failure 
    redirect_to root_path, alert: "Authentication error: #{ params[:message].humanize }"
  end

  protected
  def auth_hash
    request.env["omniauth.auth"]
  end
end
