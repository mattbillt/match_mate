class SectionsController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def destroy
    reset_session
    cookies.delete(:user_id)
    redirect_to root_path
  end
end
