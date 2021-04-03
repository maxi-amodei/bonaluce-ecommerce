class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_cart

  def current_cart
    
  end
end
