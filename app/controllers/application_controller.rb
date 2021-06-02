class ApplicationController < ActionController::Base
  before_action :set_current_user
  protect_from_forgery with: :exception 
  include SessionsHelper
  
  private
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def ensure_correct_user
    @post = Post.find_by(id:params[:id])
    if @post.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
