require 'logger'

class TabelogAPI < ActiveResource::Base
  self.site = "http://api.tabelog.com/Ver1/RestaurantSearch/"
  self.element_name = ""
  self.format = :tabelog
  self.logger = Logger.new($stderr)
  
  def self.find_by_datum(datum, page, size)
    tabelog = find(:all, :params => {:Datum => datum})
    tabelog[0..size-1]
  end

end