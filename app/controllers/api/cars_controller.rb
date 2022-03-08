class Api::CarsController < ApplicationController
  def index
    cars = Car.all
    render json: { cars: cars }
  end
end
