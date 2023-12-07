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

# TEAMS

vasco = Team.create(name:"Vasco Da Gama", city:"Rio De Janeiro", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/en/0/03/CR_Vasco_da_Gama_2021_logo.png")
corinthians = Team.create(name:"Corinthians", city:"Sao Paulo", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Sport_Club_Corinthians_Paulista_crest.svg/800px-Sport_Club_Corinthians_Paulista_crest.svg.png")
santos = Team.create(name:"Santos", city:"Santos", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Santos_Logo.png/300px-Santos_Logo.png" )
fluminense = Team.create(name:"Fluminense", city:"Rio De Janeiro", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Fluminense_fc_logo.svg/800px-Fluminense_fc_logo.svg.png")
flamengo = Team.create(name:"Flamengo", city:"Rio De Janeiro", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flamengo_braz_logo.svg/800px-Flamengo_braz_logo.svg.png" )
cam = Team.create(name:"CAM", city:"Belo Horizonte", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Clube_Atl%C3%A9tico_Mineiro_crest.svg/800px-Clube_Atl%C3%A9tico_Mineiro_crest.svg.png")
bahia = Team.create(name:"Bahia", city:"Salvador", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Esporte_Clube_Bahia_logo.svg/800px-Esporte_Clube_Bahia_logo.svg.png")
sp = Team.create(name:"Sao Paulo", city:"Sao Paulo", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Brasao_do_Sao_Paulo_Futebol_Clube.svg/1024px-Brasao_do_Sao_Paulo_Futebol_Clube.svg.png")
coritiba = Team.create(name:"Coritiba", city:"Coritiba", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Coritiba_FBC_%282011%29_-_PR.svg/270px-Coritiba_FBC_%282011%29_-_PR.svg.png")
botafogo = Team.create(name:"Botafogo", city:"Rio De Janeiro", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Botafogo_de_Futebol_e_Regatas_logo.svg/800px-Botafogo_de_Futebol_e_Regatas_logo.svg.png")
palmeiras = Team.create(name:"Palmeiras", city:"Sao Paulo", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/285px-Palmeiras_logo.svg.png")
america = Team.create(name:"America MG", city:"Belo Horizonte", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Escudo_do_America_Futebol_Clube.svg/240px-Escudo_do_America_Futebol_Clube.svg.png")
gremio = Team.create(name:"Gremio", city:"Porto Alegre", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/7/7b/Gremio_logo.gif")
bragantino = Team.create(name:"RB Bragantino", city:"Bragança Paulista", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/pt/9/9e/RedBullBragantino.png")
parana = Team.create(name:"Athletico PR", city:"Parana", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/pt/c/c7/Club_Athletico_Paranaense_2019.png")
inter = Team.create(name:"Internacional", city:"Porto Alegre", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Escudo_do_Sport_Club_Internacional.svg/1920px-Escudo_do_Sport_Club_Internacional.svg.png")
fortaleza = Team.create(name:"Fortaleza", city:"Fortaleza", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/4/40/FortalezaEsporteClube.svg")
cuiaba = Team.create(name:"Cuiaba", city:"Cuiaba", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/pt/2/20/Cuiab%C3%A1EC2020.png")
cruzeiro = Team.create(name:"Cruzeiro", city:"Belo Horizonte", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Cruzeiro_Esporte_Clube_%28logo%29.svg/632px-Cruzeiro_Esporte_Clube_%28logo%29.svg.png")
goias = Team.create(name:"Goias", city:"Goiania", country:"Brazil", bio:"TODO", emblem:"https://upload.wikimedia.org/wikipedia/commons/f/ff/Goi%C3%A1sLogo21.png")

# GAMES


teams = [
  vasco, corinthians, santos, fluminense, flamengo, cam, bahia, sp, coritiba, botafogo,
  palmeiras, america, gremio, bragantino, parana, inter, fortaleza, cuiaba, cruzeiro, goias
]

date = Date.new(2023, 12, 1)

teams.combination(2).to_a.shuffle.each_with_index do |(home_team, away_team), i|
  Game.create(date: date, city: home_team.city, home_team: home_team, away_team: away_team)
  date = date.next_day if (i + 1) % 6 == 0
end
