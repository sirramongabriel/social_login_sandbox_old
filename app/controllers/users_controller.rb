class UsersController < ApplicationController
  before_filter :get_user, except[:index, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(user_path(@user), success: 'User created!')
    else
      render(:new, error: 'There was an error processing your form.')
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to(user_path(@user), success: 'User updated!')
    else
      render(:edit, :error: 'There was an error updating this form.')
    end
  end

  def destroy
    @user.delete!
    flash.now[:notice] = 'You sure?'
    redirect_to(users_path)
  end

  private
  def get_user
    @user = User.find(params[:id])
  end
end
