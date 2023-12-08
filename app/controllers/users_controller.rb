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
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path(@user), notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end
  def delete_profile_picture
    current_user.photo.purge if current_user.photo.attached?
    redirect_to edit_user_path(current_user), notice: 'Profile picture successfully deleted!'
  end


  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :name, :language, :favourite_team, :preferences, :password, :password_confirmation, :current_password, :photo, :username)
  end
end
