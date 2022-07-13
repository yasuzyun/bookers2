class UsersController < ApplicationController
  
  before_action :correct_user,   only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @books = Book.where(user_id: params[:id])
    @book = Book.new
  end

  def index
    @user = current_user
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def update
      @user = User.find(params[:id])

 

      if @user.update(user_params)
        flash[:notice] = "You have updated user successfully."
        redirect_to user_path(@user.id)
      else
        render :edit
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
