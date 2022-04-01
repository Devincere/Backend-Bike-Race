class RidersController < ApplicationController
  def index
    @riders = Rider.all
    render json: @riders
  end

  def rider_params
    params.require(:rider).permit(:firstname, :lastname, :city, :state)
  end
end
