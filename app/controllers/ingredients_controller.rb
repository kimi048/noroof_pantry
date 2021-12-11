class IngredientsController < ApplicationController
  def index
    @hogehoge="ほげほげです。"
    @hogenum = 30
  end

  def show
    @ingredients=Ingredient.all
    @user4=[]
    @user5=[]
    @user6=[]
    @user7=[]
    @user8=[]
    (18..24).each do |num|
      @user4.concat([Food.where(user_id: 4).where(when: num).where(which: "dinner").last.ingredient])
      @user5.concat([Food.where(user_id: 5).where(when: num).where(which: "dinner").last.ingredient])
      @user6.concat([Food.where(user_id: 6).where(when: num).where(which: "dinner").last.ingredient])
      @user7.concat([Food.where(user_id: 7).where(when: num).where(which: "dinner").last.ingredient])
      @user8.concat([Food.where(user_id: 8).where(when: num).where(which: "dinner").last.ingredient])
    end
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
