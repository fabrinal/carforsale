class BrandsController < ApplicationController
  before_action :get_brand, only: [:edit,:update,:destroy]
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to brands_path, notice: "#{@brand.name} is updated"
    else
      redirect_to brands_path, notice: "Unable to update"
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_path,notice: "Delete brand successfull"
  end

  private

  def get_brand
    @brand = Brand.find(params[:id])
  end
  def brand_params
    params.require(:brand).permit(:name)
  end
end
