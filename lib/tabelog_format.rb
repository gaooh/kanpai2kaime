
module TabelogFormat 
  include ActiveResource::Formats::XmlFormat
  extend self
  def extension
    nil
  end
end