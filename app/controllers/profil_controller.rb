class ProfilController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def me
    @user = current_user
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update_me
    @user = current_user
    @user.update(user_params)
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :description, :image, :formation)
  end
end
