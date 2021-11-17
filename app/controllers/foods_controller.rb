class FoodsController < ApplicationController
  before_action :require_user
  
  def whenwhich
    @food=Food.new
    @food.build_ingredient
    @which = params[:which]
    @when = params[:when].to_i
  end
  def wwindex
    @user=User.find(current_user.id)
  end
  def wwcreate
    @which = params[:which]
    @when = params[:when].to_i
    @food = Food.new(food_params)
    @food.user_id = current_user.id
    @food.when = @when
    @food.which = @which
    @food.save
    redirect_to user_path(current_user.id)
  end
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end
  def index
    @foods=Food.all
  end
  def new
    @food = Food.new
  end
  def create
    @which = params[:which]
    @when = params[:when].to_i
    @food = Food.new(food_params)
    @food.user_id = current_user.id
    @food.save
    redirect_to user_path(current_user.id)
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
    flash[:notice] = "食事内容が更新されました"
    redirect_to user_path(current_user.id)
  end
  private
  def food_params
    params.require(:food).permit(:description, :user_id, :image, :when, :which, ingredient_attributes: [:id, :cal, :food_id, :protein, :lipid, :carbon, :ca, :fe, :v_a, :v_e, :v_b1, :v_b2, :v_c, :fiber, :fatty, :saltval])
  end
end
  

