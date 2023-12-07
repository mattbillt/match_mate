class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    if @user.nil?
      flash[:alert] = "User not found."
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile successfully updated!"
      redirect_to edit_user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :name, :language, :favourite_team, :preferences, :password, :password_confirmation, :current_password, :photo, :username)
  end
end
