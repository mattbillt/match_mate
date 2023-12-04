class GamesController < ApplicationController


  def show
    @game = Game.find(params[:id])
  end

  # def index
  #   @games = Game.all
  # end

  def index
    @games = Game.all
    if params[:query].present?
      @games = PgSearch.multisearch(params[:query])
    end
  end

end
