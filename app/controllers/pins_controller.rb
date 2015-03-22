class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  # GET /pins.json
  
  def index
    #vai buscar as infos do user atraves do username
    @teste = Instagram.user_search(params[:q], {:count => 1})
    #saca apenas o user id dessas infos
    @teste = @teste.first.id
    #vai buscar as ultimas 20 fotos desse userid
    @instagram = Instagram.user_recent_media(@teste, {:count => 20})
  end

  def perfil
    @instagram = Instagram.user_search(params[:q], {:count => 1})
  end

  def fromlink
    require "net/http"
    require 'RMagick'


    #saca so o fim do url da foto que o user colou, para usar no pedido do oembed
    @short = URI(params[:q]).path.split('/').last
    @pissa = URI(params[:p]).path.split('/').last

    #junta tudo para ter o url directo da foto com tamanho grande
    @short = 'https://instagram.com/p/' + @short + '/media/?size=l'
    @pissa = 'https://instagram.com/p/' + @pissa + '/media/?size=l'
    for i in 0..3
      @image = MiniMagick::Image.open(@short)
      @image.crop("160x640+#{i * 160}+0")
      @image.write "app/assets/images/cone" + i.to_s() + ".png"
    end
    for i in 0..3
      @image = MiniMagick::Image.open(@pissa)
      @image.crop("160x640+#{i * 160}+0")
      @image.write "app/assets/images/cilindro" + i.to_s() + ".png"
    end

    @nomedaimagem = rand.to_s
    image_list = Magick::ImageList.new( "app/assets/images/cone0.png", "app/assets/images/cilindro0.png", "app/assets/images/cone1.png", "app/assets/images/cilindro1.png", "app/assets/images/cone2.png", "app/assets/images/cilindro2.png", "app/assets/images/cone3.png", "app/assets/images/cilindro3.png" )
    image_list.append(false).write("app/assets/images/images.png")
    Cloudinary::Uploader.upload("app/assets/images/images.png", :public_id => "#{@nomedaimagem}", :folder => "finais", :invalidate => true)

  end

  # GET /pins/1
  # GET /pins/1.json
  def show
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)

    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: 'Pin was successfully created.' }
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { render :edit }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:nome, :urldoinsta, :slyce, :remote_slyce_url)
    end
end
