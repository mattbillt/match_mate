module ApplicationHelper
    include LogoHelper
    def fetch_logo(team_name)
      scrape_logo(team_name)
    end
  end
