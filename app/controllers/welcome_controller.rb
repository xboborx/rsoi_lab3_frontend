class WelcomeController < ApplicationController
  before_filter :authorize

  def index

    @cars = getAllCars

    @brands = getAllBrands
  end

  def car

  end

  def brand

  end

  def addBrand

  end

  def addCar
    @brandnames
  end

  private

  def getAllCars
    return Car.all
  end

  def getAllBrands
    return Brand.all
  end

  def getAllBrandNames
    return
  end

  def getBrandNameFromCar(car)
    return Brand.find_by_id(car.brand_id).name
  end
end
