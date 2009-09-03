# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'c6b4f3aabf115ce20fad99d749640618'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  # jpmobile 
  mobile_filter :hankaku=>true
  
  layout :basic_layout
  def basic_layout
    if request.mobile?
      "mobile"
    else
      'basic'
    end
  end
  
end
