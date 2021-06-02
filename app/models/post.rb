class Posts  < ApplicationRecord
 
  def create
    @post = Post.new(content: params[:content],user_id: @current_user.id)
  end
end

def show
  @post = Post.find_by(id: params[:id])
  #  変数@userを定義してください
  @user = User.find_by(id: @post.user_id)
end