class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:show] # Ensure the user is signed in

  def show
    @user = current_user
  end
end
