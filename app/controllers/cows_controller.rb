class CowsController < ApplicationController
  def index
    @cows = Cow.all
  end

  def new
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(cow_params)
  end

  private

  def cow_params
    params.require(:cow).permit(
      :name, :description,
      :breed, :color,
      :location, :category,
      :favorite_food, :price,
      :year_of_birth
    )
  end
end
