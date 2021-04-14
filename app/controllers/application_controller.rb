class ApplicationController < ActionController::Base
  before_action :persist_last_visited_path, :authenticate_user!
  
  
  private

  def persist_last_visited_path
    ignored_paths = %W(/users/sign_in /users/sign_up /users/password /users/sign_out /users/confirm_password /added_to_cart_items)
    unless ignored_paths.include?(request.path) || request.xhr?
     session[:last_visited_path] = request.path
    end
   end
end
