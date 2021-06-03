class CowsController < ApplicationController
  def index
    if params[:cow] == "Select Category"
      @cows = Cow.all
      redirect_to cows_path
    elsif params[:cow]
      @cows = Cow.where(category: params[:cow])
    else
      @cows = Cow.all
    end
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
      redirect_to cow_path(@cow, new: true)
    else
      render :new
    end
  end
  
  def destroy 
    @cow = Cow.find(params[:id])
    @cow.destroy
    redirect_to cows_path
  end
  
  def edit
    @cow = Cow.find(params[:id])
  end


  def destroy 
    @cow = Cow.find(params[:id])
    @cow.destroy
    redirect_to cows_path
  end

  def update
    @cow = Cow.find(params[:id])
    @cow.update(cow_params)
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
