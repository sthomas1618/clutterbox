module ApplicationHelper
  def current_user?(user)
    user == @current_user
  end

  def signed_in?
    !@current_user.nil?
  end

  def signed_in_user
    unless signed_in?
      redirect_to login_path, notice: "Please sign in." 
    end
  end
end
