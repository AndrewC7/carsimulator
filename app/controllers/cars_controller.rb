class CarsController < ApplicationController

  def index
  end

  def create
      car = Car.new(params[:make], params[:model])
      session[:car] = car.to_yaml
      redirect_to "/cars/carinfo"
  end

  def carinfo
    @car = YAML.load(session[:car])

  end



end



# if Car.new(params[:make], params[:model]).exists?
