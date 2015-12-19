class HomepageController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    # @brands = Brand.all
    @carousel_items = Car.last(3)
    @cars = Car.last(6)
  end
end
