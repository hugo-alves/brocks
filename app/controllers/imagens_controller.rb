class ImagensController < ApplicationController
  before_action :set_imagen, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imagens = Imagen.all
    respond_with(@imagens)
  end

  def show
    respond_with(@imagen)
  end

  def new
    @imagen = Imagen.new
    respond_with(@imagen)
  end

  def edit
  end

  def create
    @imagen = Imagen.new(imagen_params)
    @imagen.save
    respond_with(@imagen)
  end

  def update
    @imagen.update(imagen_params)
    respond_with(@imagen)
  end

  def destroy
    @imagen.destroy
    respond_with(@imagen)
  end

  private
    def set_imagen
      @imagen = Imagen.find(params[:id])
    end

    def imagen_params
      params.require(:imagen).permit(:description)
    end
end
