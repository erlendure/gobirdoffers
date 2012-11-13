class AdminController < ApplicationController
  before_filter :signed_in_user
  
  def settings
  end
end
