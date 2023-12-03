class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end
    def new
       @user = User.new
    end

  private

  def user_params
    params.require(:user).permit(:email, :name, :language, :favorite_team, :preferences, :password, :password_confirmation, :current_password, :photo, :username)
  end
end
