module SessionsHelper
<<<<<<< HEAD
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
=======
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
end
