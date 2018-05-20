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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
