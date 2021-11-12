class UsersController < ApplicationController
  before_action :require_user, except: [:new]
  def index
    @users=User.all
  end
  def allusersfoods
    @date=params[:date]
    @users=User.all
    # id=[]
    # @users.each do |user|
      
    # end
    
  end
  def show
    @user=User.find(params[:id])
    @food18a=Food.where(user_id: @user.id).where(when: 18).where(which: "breakfast").last
    @food18b=Food.where(user_id: @user.id).where(when: 18).where(which: "lunch").last
    @food18c=Food.where(user_id: @user.id).where(when: 18).where(which: "dinner").last
    @food19a=Food.where(user_id: @user.id).where(when: 19).where(which: "breakfast").last
    @food19b=Food.where(user_id: @user.id).where(when: 19).where(which: "lunch").last
    @food19c=Food.where(user_id: @user.id).where(when: 19).where(which: "dinner").last
    @food20a=Food.where(user_id: @user.id).where(when: 20).where(which: "breakfast").last
    @food20b=Food.where(user_id: @user.id).where(when: 20).where(which: "lunch").last
    @food20c=Food.where(user_id: @user.id).where(when: 20).where(which: "dinner").last
    @food21a=Food.where(user_id: @user.id).where(when: 21).where(which: "breakfast").last
    @food21b=Food.where(user_id: @user.id).where(when: 21).where(which: "lunch").last
    @food21c=Food.where(user_id: @user.id).where(when: 21).where(which: "dinner").last
    @food22a=Food.where(user_id: @user.id).where(when: 22).where(which: "breakfast").last
    @food22b=Food.where(user_id: @user.id).where(when: 22).where(which: "lunch").last
    @food22c=Food.where(user_id: @user.id).where(when: 22).where(which: "dinner").last
    @food23a=Food.where(user_id: @user.id).where(when: 23).where(which: "breakfast").last
    @food23b=Food.where(user_id: @user.id).where(when: 23).where(which: "lunch").last
    @food23c=Food.where(user_id: @user.id).where(when: 23).where(which: "dinner").last
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
