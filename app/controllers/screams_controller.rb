class ScreamsController < ApplicationController
  def new
    @image_from_unsplash = JSON.parse(fetch_photos)
    @scream = Scream.new
  end

  def create
    @scream = Scream.create(scream_params)
    redirect_to new_scream_path
  end

  def index
    # @screams = Scream.all
    redirect_to new_scream_path
  end

  private

  def scream_params
    params.require(:scream).permit(:content)
  end
end
