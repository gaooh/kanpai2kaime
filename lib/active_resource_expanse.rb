
ActiveResource::Base.class_eval do  
  class << self  
    def element_path(id, prefix_options = {}, query_options = nil)  
      prefix_options, query_options = split_options(prefix_options) if query_options.nil?  
      "#{prefix(prefix_options)}#{collection_name}/#{id}.#{format.extension}#{query_string(query_options)}" if format.extension  
      "#{prefix(prefix_options)}#{collection_name}/#{id}#{query_string(query_options)}" if !format.extension  
    end  
   
    def collection_path(prefix_options = {}, query_options = nil)  
      prefix_options, query_options = split_options(prefix_options) if query_options.nil?  
      "#{prefix(prefix_options)}#{collection_name}.#{format.extension}#{query_string(query_options)}" if format.extension  
      "#{prefix(prefix_options)}#{collection_name}#{query_string(query_options)}" if !format.extension  
    end  
  end  
end
