module ShopsHelper

  #GoogleMaps (圖)
  def gmap_link(name,latitude,longitude)
    link = '<a href="https://www.google.com.tw/maps/place/' + name.to_s + '/@' + latitude.to_s + ',' + longitude.to_s + ',17z/" target="_blank">' + '<i class="fa fa-map-marker fa-2x"></i></a>'
    return link.html_safe
  end

  #Sidebar (圖+文字)
  def sidebar_url(name,photo,id)
    link = '<a href="/shops/' + id.to_s + '" target="_blank">' + name.to_s + '<br><img src="' + photo
  end

  #Show圖
  def show_pic(photo)
    if photo.present?
      pic = image_tag photo, class: 'img-responsive thumbnail'
    else
      pic = "<img src='/empty.png' width='100%' class='img-responsive thumbnail'>".html_safe
    end
  end

end
