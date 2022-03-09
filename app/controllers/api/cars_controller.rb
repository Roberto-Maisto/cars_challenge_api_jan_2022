class Api::CarsController < ApplicationController
  def index
    cars = Car.all
    render json: { cars: cars }
  end

  def create
    new_car = Car.new
    new_car.brand = params[:car][:brand]
    new_car.model = params[:car][:model]
    new_car.colour = params[:car][:colour]
    new_car.year = params[:car][:year]
    new_car.price = params[:car][:price]
    new_car.save
    render json: { car: new_car }, status: 201
  end
end
