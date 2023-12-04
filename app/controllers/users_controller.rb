class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: "Profile successfully updated."
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    allowed_params = [:email, :name, :language, :favourite_team, :preferences, :photo, :username]
    allowed_params += [:password, :password_confirmation, :current_password] if params[:user][:password].present?
    params.require(:user).permit(allowed_params)
  end
end
