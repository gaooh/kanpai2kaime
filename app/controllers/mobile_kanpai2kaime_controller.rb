class MobileKanpai2kaimeController < ApplicationController
  
  def index
  end
  
  def drink
    pos = request.mobile.position
    if pos.nil?
      tabelog_apis = TabelogAPI.find(:all, :params => {:ResultSet => 'large'})
    else
      tabelog_apis = TabelogAPI.find(:all, :params => {:Latitude => pos.lat, :Longitude => pos.lon, :ResultSet => 'large'})
    end
    Tabelog.save_from_api(tabelog_apis)
    @tabelogs = Array.new
    tabelog_apis.each_with_index do |tabelog_api, index|
      @tabelogs << Tabelog.find_by_tabelog_url(tabelog_api.TabelogUrl)
      break if index == 4
    end
  end
  
  def drink_detail
    @tabelog = Tabelog.find(params[:id])
  end
  
end
