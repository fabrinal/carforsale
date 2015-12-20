class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show,:set_collections,:set_car]
  before_action :set_car, only: [:show,:edit,:destroy,:update]
  before_action :set_collections, only: [:new,:edit]

  def index
    @cars = Car.all
  end

  def show
    @user = User.first
  end

  def new
    @car = Car.new

  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car), notice: "Update success"
    else
      render 'edit'
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path, notice: "Car has deleted"
  end

  private
  def generate_years difference
    years = []
    difference.times { |i|
      years.push(DateTime.current.year - i)
    }
    years
  end

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand_id,:type_id,:price,:total_distance,:engine_volume,:assembly_year,:purchase_year,:photo)
  end

  def set_collections
    @brands = Brand.all
    @types = Type.all
    @years = generate_years 15
  end

end
