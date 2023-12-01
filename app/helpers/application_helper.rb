module ApplicationHelper
    include LogoHelper
    def fetch_logo(team_name)
      scrape_logo(team_name)
    end

    def active_link_class(link_path)
      current_page?(link_path) ? 'active' : ''
    end
  end
