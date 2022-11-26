class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  before_action :logged_in?
  def top
    
  end
  
  
end
