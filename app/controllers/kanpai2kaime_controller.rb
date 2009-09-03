class Kanpai2kaimeController < ApplicationController
  before_filter :redirect_if_mobile
  
  def index
  end
  
  def drink
    tabelog_apis = TabelogAPI.find(:all, :params => {:ResultSet => 'large'})
    Tabelog.save_from_api(tabelog_apis)
    
    @tabelogs = Array.new
    tabelog_apis.each_with_index do |tabelog_api, index|
      @tabelogs << Tabelog.find_by_tabelog_url(tabelog_api.TabelogUrl)
      break if index == 4
    end
  end
  
  def drink_detail
    @tabelog = Tabelog.find(params[:id])
    @pos = session[:pos]
  end
  
  private
  
  def redirect_if_mobile
    if request.mobile?
      pa = params.dup
      pa[:controller] = "/mobile_kanpai2kaime"
      redirect_to pa
    end
  end
  
end
