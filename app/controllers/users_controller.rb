class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :require_user_logged_in, only: [:index, :show, :edit]

=======
  
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
  def index
    @users = User.order(id: :desc).page(params[:page]).per(25)
  end

  def show
<<<<<<< HEAD
     @user = User.find(params[:id])
=======
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
<<<<<<< HEAD
      redirect_to root_url
=======
      redirect_to @user
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private
<<<<<<< HEAD
  
=======

>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
<<<<<<< HEAD
=======

>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
