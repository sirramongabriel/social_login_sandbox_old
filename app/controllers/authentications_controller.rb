class AuthenticationsController < ApplicationController
  def index
  end

  def create
    binding.pry
    omniauth = request.env['omniauth.auth'] 
    current_user.authentications.create(
                                        provider: auth['proiver'],
                                        uid: auth['uid']
                                       )
    flash[:notice] = 'Authentication successful.'
    redirect_to authentications_path
  end

  def destroy
  end

  def facebook
    # @user = User.find_for_facebook_oath(request.env)
  end
end
