class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :init

  def init
    @image_from_unsplash = JSON.parse(fetch_photos)
  end

  def fetch_photos
    RestClient.get "https://api.unsplash.com/photos/random?client_id=#{ENV['UNSPLASH_APPLICATION_ID']}"
  end
end
