# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Game.destroy_all
Team.destroy_all

# Teams Bios

america_bio = "América-MG, founded in 1912, is a resilient club known for its underdog spirit. " \
        "Rising through the ranks, they bring a mix of youth talent and seasoned players " \
        "to Brasileirão, surprising opponents with their tenacity.\n"
bahia_bio = "Bahia, with a vibrant football culture, brings samba flair to Brasileirão. Known for " \
      "nurturing local talent, they captivate fans with their entertaining style of play " \
      "and a rich footballing tradition.\n"
botafogo_bio = "Botafogo, a club entrenched in Brazilian football history, showcases a blend of " \
         "resilience and stylish play. Despite challenges, they continue to be a symbol " \
         "of tradition and pride in Brasileirão.\n"
bragantino_bio = "Red Bull Bragantino, a rising force backed by innovation, brings a dynamic and " \
          "energetic style to Brasileirão. Their strategic approach and emphasis on youth " \
          "development make them an exciting team to watch.\n"
cam_bio = "Atlético Mineiro, established in 1908, boasts a star-studded roster and a commitment " \
      "to attacking football. With a blend of experienced players and emerging talent, they " \
      "aim for consistent excellence in Brasileirão.\n"
corinthians_bio = "Corinthians, founded in 1910, embodies the fighting spirit of São Paulo. With a massive fan base and
 a legacy of domestic and international success, they set high standards in Brasileirão.\n"
coritiba_bio = "Coritiba, dating back to 1909, maintains a solid presence in Brasileirão with a disciplined and organized
approach. The club's history reflects a determination to overcome obstacles and strive for excellence.\n"
cruzeiro_bio = "Cruzeiro, a football powerhouse since 1921, carries a legacy of success and silverware. Despite recent
challenges, they remain a force to be reckoned with in Brasileirão, driven by a rich history.\n"
cuiaba_bio = "Cuiabá, a rising star in Brazilian football, brings enthusiasm and hunger to Brasileirão. The club's
journey reflects a commitment to growth, showcasing potential and determination.\n"
flamengo_bio = "Flamengo, founded in 1895, stands as Brazil's most popular and successful club. With a roster of
top-tier talent, they dominate Brasileirão with attacking prowess and a relentless pursuit of titles.\n"
fluminense_bio = "Fluminense, a Rio de Janeiro powerhouse, blends youth development with experienced leadership. Known
for stylish play, they aim to weave a narrative of success in Brasileirão.\n"
fortaleza_bio = "Fortaleza, a resilient club on the rise, mirrors the city's fighting spirit. With shrewd management
and a disciplined squad, they've become a force to be reckoned with in Brasileirão.\n"
gremio_bio = "Grêmio, founded in 1903, symbolizes the footballing excellence of Southern Brazil. Known for a robust
defense and strategic play, they continue to be contenders for Brasileirão titles.\n"
goias_bio = "Goiás, established in 1943, is a club with a storied past. With a focus on nurturing local talent, they
bring a mix of experience and youth to Brasileirão, contributing to the diversity of the league.\n"
inter_bio = "Internacional, established in 1909, showcases a rich history and a commitment to attacking football. Their
presence in Brasileirão reflects a blend of tradition and a progressive approach to the game.\n"
palmeiras_bio = "Palmeiras, dating back to 1914, stands as a football giant with a global footprint. With a blend of
international stars and local talent, they remain a perennial powerhouse in Brasileirão.\n"
parana_bio = "Athletico Paranaense, a tactical powerhouse since 1924, combines a strong defense with swift
counterattacks. Their success in Brasileirão reflects a strategic approach, making them a formidable contender.\n"
santos_bio = "Santos, founded in 1912, is synonymous with Brazilian football legends. Known for nurturing
iconic players, they continue to play attractive football, contributing to the storied history of Brasileirão.\n"
sp_bio = "São Paulo, established in 1930, is a club of contrasts, blending tradition with a modern approach.
Their tactical prowess and emphasis on youth development make them a dynamic force in Brasileirão.\n"
vasco_bio = "Vasco da Gama, founded in 1898, brings a touch of elegance and determination to Brasileirão.
Despite recent challenges, their legacy and commitment to developing young talent remain key aspects of their identity.\n"


# TEAMS

america = Team.create(name:"America MG", city:"Belo Horizonte", country:"Brazil", bio: america_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Escudo_do_America_Futebol_Clube.svg/240px-Escudo_do_America_Futebol_Clube.svg.png")
bahia = Team.create(name:"Bahia", city:"Salvador", country:"Brazil", bio: bahia_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Esporte_Clube_Bahia_logo.svg/800px-Esporte_Clube_Bahia_logo.svg.png")
botafogo = Team.create(name:"Botafogo", city:"Rio De Janeiro", country:"Brazil", bio:botafogo_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Botafogo_de_Futebol_e_Regatas_logo.svg/800px-Botafogo_de_Futebol_e_Regatas_logo.svg.png")
bragantino = Team.create(name:"RB Bragantino", city:"Bragança Paulista", country:"Brazil", bio:bragantino_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/9/9e/RedBullBragantino.png")
cam = Team.create(name:"CAM", city:"Belo Horizonte", country:"Brazil", bio:cam_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Clube_Atl%C3%A9tico_Mineiro_crest.svg/800px-Clube_Atl%C3%A9tico_Mineiro_crest.svg.png")
corinthians = Team.create(name:"Corinthians", city:"Sao Paulo", country:"Brazil", bio:corinthians_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Sport_Club_Corinthians_Paulista_crest.svg/800px-Sport_Club_Corinthians_Paulista_crest.svg.png")
coritiba = Team.create(name:"Coritiba", city:"Coritiba", country:"Brazil", bio:coritiba_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Coritiba_FBC_%282011%29_-_PR.svg/270px-Coritiba_FBC_%282011%29_-_PR.svg.png")
cruzeiro = Team.create(name:"Cruzeiro", city:"Belo Horizonte", country:"Brazil", bio:cruzeiro_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Cruzeiro_Esporte_Clube_%28logo%29.svg/632px-Cruzeiro_Esporte_Clube_%28logo%29.svg.png")
cuiaba = Team.create(name:"Cuiaba", city:"Cuiaba", country:"Brazil", bio:cuiaba_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/2/20/Cuiab%C3%A1EC2020.png")
flamengo = Team.create(name:"Flamengo", city:"Rio De Janeiro", country:"Brazil", bio:flamengo_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flamengo_braz_logo.svg/800px-Flamengo_braz_logo.svg.png" )
fluminense = Team.create(name:"Fluminense", city:"Rio De Janeiro", country:"Brazil", bio:fluminense_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Fluminense_fc_logo.svg/800px-Fluminense_fc_logo.svg.png")
fortaleza = Team.create(name:"Fortaleza", city:"Fortaleza", country:"Brazil", bio:fortaleza_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/4/40/FortalezaEsporteClube.svg")
gremio = Team.create(name:"Gremio", city:"Porto Alegre", country:"Brazil", bio:gremio_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/7/7b/Gremio_logo.gif")
goias = Team.create(name:"Goias", city:"Goiania", country:"Brazil", bio:goias_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/f/ff/Goi%C3%A1sLogo21.png")
inter = Team.create(name:"Internacional", city:"Porto Alegre", country:"Brazil", bio:inter_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Escudo_do_Sport_Club_Internacional.svg/1920px-Escudo_do_Sport_Club_Internacional.svg.png")
palmeiras = Team.create(name:"Palmeiras", city:"Sao Paulo", country:"Brazil", bio:palmeiras_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/285px-Palmeiras_logo.svg.png")
parana = Team.create(name:"Athletico PR", city:"Parana", country:"Brazil", bio:parana_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/c/c7/Club_Athletico_Paranaense_2019.png")
santos = Team.create(name:"Santos", city:"Santos", country:"Brazil", bio:santos_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Santos_Logo.png/300px-Santos_Logo.png" )
sp = Team.create(name:"Sao Paulo", city:"Sao Paulo", country:"Brazil", bio:sp_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Brasao_do_Sao_Paulo_Futebol_Clube.svg/1024px-Brasao_do_Sao_Paulo_Futebol_Clube.svg.png")
vasco = Team.create(name:"Vasco Da Gama", city:"Rio De Janeiro", country:"Brazil", bio:vasco_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/0/03/CR_Vasco_da_Gama_2021_logo.png")

# GAMES


teams = [
  america, bahia, botafogo, bragantino, cam, corinthians, coritiba, cuiaba, cruzeiro, flamengo,
  fluminense, fortaleza, gremio, goias, inter, palmeiras, parana, santos, sp, vasco
]

date = Date.new(2023, 12, 1)

teams.combination(2).to_a.shuffle.each_with_index do |(home_team, away_team), i|
  Game.create(date: date, city: home_team.city, home_team: home_team, away_team: away_team)
  date = date.next_day if ((i + 1) % 6).zero?
end
