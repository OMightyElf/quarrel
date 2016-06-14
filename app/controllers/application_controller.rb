class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def fetch_photos
    RestClient.get "https://api.unsplash.com/photos/random?client_id=#{ENV['UNSPLASH_APPLICATION_ID']}"
  end
end
