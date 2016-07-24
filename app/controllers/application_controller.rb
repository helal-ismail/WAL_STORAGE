class ApplicationController < ActionController::Base
rescue_from Exception, :with => :handle_exception
  
  ## CONSTANTS ##
  # Replace with OneSig
  PARSE_APP_ID= 'qoVXO9VpozV7iWtvHDe545jeVmpeysjzqgYiKSDz'          # ENV["PARSE_APP_ID"]
  PARSE_API_KEY= 'fRJ1YCCP1DUiUnexcG0UfSLuzP9Ggdj7jwUYQ0h7'         # ENV["PARSE_API_KEY"]
  
  def handle_exception (exception)
          render :json => {:success => false, :msg => "#{exception.message}", :backtrace => exception.backtrace}
  end
  
  
end
