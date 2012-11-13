class ApplicationController < ActionController::Base
  before_filter :set_current_user
  protect_from_forgery
  include SessionsHelper

  private 
    def set_current_user
      @current_user = User.find_by_id(cookies[:user_id])
    end
end
