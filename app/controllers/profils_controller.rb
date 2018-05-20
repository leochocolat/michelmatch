class ProfilsController < ApplicationController
  def index
    @profils = Profil.all
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def new
    @profil = Profil.new
  end

  def create
    @profil = Profil.create(profil_params)
    redirect_to profils_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def profil_params
    params.require(:profil).permit(:firstname, :lastname, :age, :description, :photo, :formation)
  end
end
