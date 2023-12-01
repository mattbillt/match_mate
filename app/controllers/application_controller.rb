class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  before_action :set_game

  def set_game
    @game = Game.find(params[:id]) if params[:id].present?
  end
end
