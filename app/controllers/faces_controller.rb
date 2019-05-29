class FacesController < ApplicationController
  before_action :set_face, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [ :edit, :destroy]
  before_action :kontrol, only: [:edit, :update, :destroy]
  
  # GET /faces
  # GET /faces.json
  def index
    @son  = Face.last
    @faces = Face.all
  end
   module ContentHelper
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end

  def kontrol
      
    if @face.user!=current_user
        
        redirect_to root_url, notice:'Yetkiniz yok.'
    end
  end
  # GET /faces/1
  # GET /faces/1.json
  def show
  end

  # GET /faces/new
  def new
    @face = Face.new
  end

  # GET /faces/1/edit
  def edit
  end

  # POST /faces
  # POST /faces.json
  def create
    @face = Face.new(face_params)
    @face.user=current_user
    respond_to do |format|
      if @face.save
        format.html { redirect_to @face, notice: 'Kart başarıyla eklendi.' }
        format.json { render :show, status: :created, location: @face }
      else
        format.html { render :new }
        format.json { render json: @face.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faces/1
  # PATCH/PUT /faces/1.json
  def update
    respond_to do |format|
      if @face.update(face_params)
        format.html { redirect_to @face, notice: 'Kart başarıyla güncellendi.' }
        format.json { render :show, status: :ok, location: @face }
      else
        format.html { render :edit }
        format.json { render json: @face.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faces/1
  # DELETE /faces/1.json
  def destroy
    @face.destroy
    respond_to do |format|
      format.html { redirect_to faces_url, notice: 'Kart başarıyla silindi.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_face
      @face = Face.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def face_params
      params.require(:face).permit(:baslik, :ekleyen, :ozet, :icerik, :begeni, :resim)
    end
end
