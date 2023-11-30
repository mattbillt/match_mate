module LogoHelper
  require 'open-uri'
  require 'nokogiri'

  def scrape_logo(team_name)
    team_name = team_name.gsub(' ', '%20') # URL encode the team name
    url = "https://logodetimes.com/brasil/#{team_name}"
    html = URI.open(url)
    doc = Nokogiri::HTML(html.read)
    logo_url = doc.css('img')[0]['src']
    logo_url
  end
end
