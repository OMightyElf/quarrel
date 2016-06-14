class ScreamController < ApplicationController
  def new
    @scream = Scream.new
  end

  def index
    @screams = Scream.all
  end
end
