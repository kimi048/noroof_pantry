class IngredientsController < ApplicationController
  def index
    @hogehoge="ほげほげです。"
    @hogenum = 30
  end

  def show
    @ingredients=Ingredient.all
  end
  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      flash[:notice] = "ingredient was updated successfully."
      redirect_to "/foods"
    else
      render 'edit'
    end
  end
  private 
  def ingredient_params
    params.require(:ingredient).permit(:cal, :protein, :lipid, :carbon, :ca, :fe, :v_a, :v_e, :v_b1, :v_b2, :v_c, :fiber, :fatty, :saltval)
  end
end
