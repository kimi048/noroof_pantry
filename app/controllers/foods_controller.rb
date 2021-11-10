class FoodsController < ApplicationController
  def index
    @foods=Food.all
  end
  def new
    @food = Food.new
  end
  def create
    @food = Food.new food_params
    @food.save
    redirect_to foods_path
  end
  def edit
    @food = Food.find(params[:id]) 
  end
  def show 
    @food = Food.find(params[:id]) 
  end
  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    flash[:notice] = "User was updated successfully."
    redirect_to foods_path
  end
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end
private
  def food_params
    params.require(:food).permit(:description, :user_id, :image)
  end
end
