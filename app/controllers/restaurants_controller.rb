class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = City.find_by(name: params[:search][:query]).restaurants
    else
      @restaurants = Restaurant.all
    end
  end
end
