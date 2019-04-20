class CarsController < ApplicationController

def index
  @cars = Car.all
end

def show
  @car = Car.find params[:id]
end

  def new
    @car = Car.new
  end

  def create
    car = Car.create car_params
    redirect_to cars_path
  end

  def edit
    @car = Car.find params[:id]
  end

  def update
    car = Car.find params[:id]
    car.update car_params
    redirect_to car_path
  end

  def destroy
    car = Car.find params[:id]
    car.destroy
    redirect_to cars_path
  end
  private
  def car_params
    params.require(:car).permit(:name,:image,:seat,:price,:brand_id,:model_id,:review_id)
  end
end
