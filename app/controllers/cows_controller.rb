class CowsController < ApplicationController
  def index
    @cows = Cow.all
  end

  def show
    @cow = Cow.find(params[:id])
  end

  def new
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(cow_params)
    @cow.user = current_user
    if @cow.save
      redirect_to cow_path(@cow)
    else
      render :new
    end
  end

  private

  def cow_params
    params.require(:cow).permit(
      :name, :description,
      :breed, :color,
      :location, :category,
      :favorite_food, :price,
      :year_of_birth, :photo
    )
  end
end
