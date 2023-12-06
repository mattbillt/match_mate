class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  # before_action :set_game
  # André said that before uncommenting this line, raise a ticket with him!!!!!!!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :language, :favourite_team, :preferences, :photo, :username])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :language, :favourite_team, :preferences, :photo, :username])
  end

  def set_game
    @game = Game.find(params[:id]) if params[:id].present?
  end
end
