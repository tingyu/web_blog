class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  full_title = 'Daily Record'

end
