class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  #load_and_authorize_resource

  # GET /shops
  # GET /shops.json
  def index
    @shops = Shop.all.order("RAND()")
    @shops2 = Shop.all.has_photo
    @infos = Info.all
    @infos2 = Info.all.has_photo
    #@events = Event.all
    @events = Event.page params[:page]

    @hash = Gmaps4rails.build_markers(@shops) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.title shop.name
      shops = "<img src='#{shop.photo.small}' class='thumbnail'><font style='font-size: 17px;'>#{shop.name}<br>電話：#{shop.telphone}<br>地址：#{shop.address.gsub('新竹縣','')}<br>座標：#{shop.latitude},#{shop.longitude}</font>"

      marker.infowindow(ActionController::Base.helpers.link_to(shops.html_safe,shop_path(shop)))

      marker.picture({
        #參考： http://kml4earth.appspot.com/icons.html#mapfiles
        #"url" => "https://www.google.com/mapfiles/marker_green.png",
        #"url" => "http://maps.google.com/mapfiles/kml/pal2/icon46.png",
        #"url" => "https://upload.wikimedia.org/wikipedia/commons/5/52/RestaurantMapIcon.png",
        "url" => "https://cdn2.iconfinder.com/data/icons/line-elements/512/cook-32.png",
        #"url" => "http://maps.google.com/mapfiles/kml/pal3/icon56.png",
        #"width" => "32",
        "width" => "40",
        #"height" => "32"
        "height" => "40"
      })

      marker.json({ title: shop.name })
    end
  end

  def search
    @keyword = "#{params[:keyword]}"
    keyword = "%#{params[:keyword]}%"
    #@shops = Shop.where("name like ?", keyword)
    #Shop.where('name LIKE ? OR content like ?', '%鍋%','%日本%')'
    @shops = Shop.where("name LIKE ? OR content LIKE ?", keyword, keyword)
    render layout: 'no_sidebar'
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
    @shops = Shop.all.order("RAND()")
    render layout: 'no_sidebar'
  end

  # GET /shops/new
  def new
    @shop = Shop.new
    render layout: 'no_sidebar'
  end

  # GET /shops/1/edit
  def edit
    render layout: 'no_sidebar'
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)
    @shop.user_id = current_user.id

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: '美食餐廳已新增。' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: '美食餐廳已修改。' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url, notice: '美食餐廳已刪除。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:name, :telphone, :address, :content, :website, :latitude, :longitude, :profile, :menu, :photo, :photo_cache, :remove_photo, :user_id)
    end
end
