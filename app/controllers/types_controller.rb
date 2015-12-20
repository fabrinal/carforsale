class TypesController < ApplicationController
  before_action :set_type, only: [:edit,:update,:destroy,:show]
  skip_before_action :authenticate_user!, only: :show
  def new
    @type = Type.new
    @brands = Brand.all
  end

  def show
    @cars = Car.where(type_id: @type.id)
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to brands_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @type.update
      redirect_to brands_path
    else
      render 'edit'
    end
  end

  def destroy
    @type.destroy
    redirect_to brands_path
  end

  private
  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name,:brand_id)
  end
end
