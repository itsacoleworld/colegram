class UsersController < ApplicationController

  # show action
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts.order(created_at: :desc)
  end

  # edit profile action
  def edit
    @user = User.find(params[:id])
  end

  # update user info
  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender, :avatar)
  end

end
