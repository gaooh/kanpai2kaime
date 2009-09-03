class Tabelog < ActiveRecord::Base
  
  def self.save_from_api(tabelog_apis)
    return if tabelog_apis.nil?
    tabelog_apis.each do |tabelog_api|
      tabelog = Tabelog.new
      t = find(:first, :conditions => ['tabelog_url = ? ', tabelog_api.TabelogUrl])
      next unless t.nil?
      tabelog.restaurant_name = tabelog_api.RestaurantName
      tabelog.tabelog_url = tabelog_api.TabelogUrl
      tabelog.total_score = tabelog_api.TotalScore
      tabelog.taste_score = tabelog_api.TasteScore
      tabelog.service_score = tabelog_api.ServiceScore
      tabelog.mood_score = tabelog_api.MoodScore
      tabelog.situation = tabelog_api.Situation
      tabelog.dinner_price = tabelog_api.DinnerPrice
      tabelog.lunch_price = tabelog_api.LunchPrice
      tabelog.category = tabelog_api.Category
      tabelog.station = tabelog_api.Station
      tabelog.address = tabelog_api.Address
      tabelog.tel = tabelog_api.Tel
      tabelog.business_hours = tabelog_api.BusinessHours
      tabelog.holiday = tabelog_api.Holiday
      tabelog.latitude = tabelog_api.Latitude
      tabelog.longitude = tabelog_api.Longitude
      tabelog.save
    end
  end
end
