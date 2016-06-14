class ScreamController < ApplicationController
  def new
    @image_from_unsplash = JSON.parse(fetch_photos)
    @scream = Scream.new
  end

  def index
    @screams = Scream.all
  end
end
