class GamesController < ApplicationController


  def show
    @game = Game.find(params[:id])
  end

  def index
    @games = Game.all
    if params[:query] && params[:date]
      @games = Game.search_by_city_and_date(params[:query]).search_by_city_and_date(params[:date])
    end
  end

end
