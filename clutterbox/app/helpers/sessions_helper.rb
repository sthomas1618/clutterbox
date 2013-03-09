module SessionsHelper

  def sign_in(user)
    cookies.permanent[:user_id] = user.id
  end

  def sign_out
    cookies.delete(:user_id)
  end
end