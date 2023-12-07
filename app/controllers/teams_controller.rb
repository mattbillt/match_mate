class TeamsController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def scrape_logo(team_name)
    # The URL of the website you're scraping from
    url = "https://logodetimes.com/campeonato-brasileiro-serie-a/#{team_name}"
    html = URI.open(url)
    doc = Nokogiri::HTML(html)

    # The CSS selector for the logo on the website
    # This will depend on the structure of the website and might need to be adjusted
    doc.css('img')[0]['src']
  end

  def show
    @team = Team.find(params[:id])
  end

  def index
    if params[:query].present?
      @teams = Team.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @teams = Team.all
    end
  end
end
