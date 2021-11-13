class UsersController < ApplicationController
  before_action :require_user, except: [:new]
  def index
    @users=User.all
  end
  def allusersfoods
    @date=params[:date]
    @users=User.all
  end
  def show
    @user=User.find(params[:id])
    @foods=[]
    (18..23).each do |num|
      @foods.concat([Food.where(user_id: @user.id).where(when: num).where(which: "breakfast").last])
      @foods.concat([Food.where(user_id: @user.id).where(when: num).where(which: "lunch").last])
      @foods.concat([Food.where(user_id: @user.id).where(when: num).where(which: "dinner").last])
    end
  end
  def new 
    @user=User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice]="Welcome to NoRooF #{@user.username}"
      redirect_to users_path
    else
      flash.now[:alert] = "エラー発生"
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User was updated successfully."
      redirect_to users_path
    else
      render 'edit'
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
