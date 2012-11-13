class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show 
    @user = User.find_by_username(params[:id])
    @bookmarks = @user.bookmarks
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if (@user.save)
      sign_in @user
      flash[:success] = "Welcome Clutterbox!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Updated Account"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user_to_destroy = User.find_by_username(params[:id])
    user_to_destroy.destroy
    flash[:success] = "Removed user"
    redirect_to users_path
  end
end