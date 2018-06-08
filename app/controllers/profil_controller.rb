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

  def update_me
    @user = current_user
    # if @user.update(user_params)
      redirect_to root_path
    # else
    #   render 'me'
    # end
  end

# ajouter un preview update

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :description, :image, :formation, :photo)
  end
end
