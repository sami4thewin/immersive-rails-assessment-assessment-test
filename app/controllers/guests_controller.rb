class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    @appearance = Appearance.new
  end
end
