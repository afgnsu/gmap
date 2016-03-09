class InfosController < ApplicationController
  before_action :set_info, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  #load_and_authorize_resource
  layout 'info'

  # GET /infos
  # GET /infos.json
  def index
    @infos = Info.all
    @infos2 = Info.all.has_photo
    @shops = Shop.all.order("RAND()")
    @shops2 = Shop.all.has_photo

    @hash = Gmaps4rails.build_markers(@infos) do |info, marker|
      marker.lat info.latitude
      marker.lng info.longitude
      marker.title info.name
      infos = "<img src='#{info.photo.small}' class='thumbnail'><font style='font-size: 17px;'>#{info.name}<br>電話：#{info.telphone}<br>地址：#{info.address.gsub('新竹縣','')}<br>座標：#{info.latitude},#{info.longitude}</font>"
      marker.infowindow(ActionController::Base.helpers.link_to(infos.html_safe,info_path(info)))
      marker.picture({
        #參考： http://kml4earth.appspot.com/icons.html#mapfiles
        "url" => "https://www.google.com/mapfiles/marker_green.png",
        #"url" => "https://cdn2.iconfinder.com/data/icons/line-elements/512/cook-32.png",
        #"url" => "http://maps.google.com/mapfiles/kml/pal3/icon56.png",
        "width" => "40",
        "height" => "40"
      })

      marker.json({ title: info.name })
    end
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    @shops = Shop.all.order("RAND()")
    render layout: 'no_sidebar'
  end

  # GET /infos/new
  def new
    @info = Info.new
    render layout: 'no_sidebar'
  end

  # GET /infos/1/edit
  def edit
    render layout: 'no_sidebar'
  end

  # POST /infos
  # POST /infos.json
  def create
    @info = Info.new(info_params)
    @shops = Shop.all.order("RAND()")
    @info.user_id = current_user.id

    respond_to do |format|
      if @info.save
        format.html { redirect_to @info, notice: '旅遊資訊已新增。' }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to @info, notice: '旅遊資訊已修改。' }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to infos_url, notice: '旅遊資訊已刪除。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:info).permit(:name, :telphone, :address, :website, :note, :latitude, :longitude, :photo, :photo_cache, :remove_photo, :user_id)
    end
end
