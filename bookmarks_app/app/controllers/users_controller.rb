class UsersController < ApplicationController

  def index
    @users = all_users
  end

  def show 
    @user = all_users[params[:id].to_i]
  end

  def new
    
  end

  def create
    flash[:success] = "Welcome Cluterbox!"
    redirect_to user_path(1)
  end

  def edit
    
  end

  def update
    flash[:success] = "Updated Account"
    redirect_to user_path(1)
  end

  def destroy
    flash[:success] = "Removed user."
    redirect_to users_path
  end

  def all_users
    [
      { first_name: "Billy", 
        last_name:  "Bob",
        username:   "BBob",
        email:      "bbob@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4"},
      { first_name: "Joe", 
        last_name:  "Smoe",
        username:   "Smoelester",
        email:      "smoe@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4"},
      { first_name: "Sarah", 
        last_name:  "Connor",
        username:   "ihaterobots",
        email:      "skynetsucks@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4"}]
  end
end