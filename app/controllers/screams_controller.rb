class ScreamsController < ApplicationController
  def new
    @scream = Scream.new
  end

  def create
    @scream = Scream.create(scream_params)
    redirect_to new_scream_path
  end

  def index
    @screams = Scream.all.order(created_at: :desc)
  end

  private

  def scream_params
    params.require(:scream).permit(:content)
  end
end
