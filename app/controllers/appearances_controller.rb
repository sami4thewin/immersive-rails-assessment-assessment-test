class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    guest = Guest.find_by(id: params[:appearance][:guest])
    episode = Episode.find_by(id: params[:appearance][:episode])
    @appearance = Appearance.new
    @appearance.rating = params[:appearance][:rating]
    @appearance.guest = guest
    @appearance.episode = episode
    @appearance.save
    redirect_to '/'
  end

end
