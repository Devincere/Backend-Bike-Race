class SlogansController < ApplicationController
  def index
    @slogans = Slogan.all

    render json: @slogans
  end
  def create
    @slogan = Slogan.new(slogan_params)

    if @slogan.save
      render json: @slogan, status: 201
    else
      render json: {error: 'Something wrong!'}, status: 422
    end

  end  

  private 
  def slogan_params
    params.require(:slogan).permit(:firstName, :lastName, :email, :suggestion)
  end
end
