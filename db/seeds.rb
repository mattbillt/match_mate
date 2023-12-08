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

america = Team.create(name:"America MG", city:"Belo Horizonte", country:"Brazil", bio: america_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Escudo_do_America_Futebol_Clube.svg/240px-Escudo_do_America_Futebol_Clube.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Arena_Independ%C3%AAncia_-_Atl%C3%A9tico_x_Fluminense.jpg/480px-Arena_Independ%C3%AAncia_-_Atl%C3%A9tico_x_Fluminense.jpg" , stadium_name:"Estádio Raimundo Sampaio
", address:"R. Pitangui, 3230 - Horto, Belo Horizonte - MG, 31030-066")
bahia = Team.create(name:"Bahia", city:"Salvador", country:"Brazil", bio: bahia_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/2/2c/Esporte_Clube_Bahia_logo.svg/800px-Esporte_Clube_Bahia_logo.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Itaipava_Arena_-_March_2013.jpg/345px-Itaipava_Arena_-_March_2013.jpg", stadium_name:"Itaipava Arena Fonte Nova
", address:"Ladeira da Fonte das Pedras, Nazaré, Salvador, Brazil")
botafogo = Team.create(name:"Botafogo", city:"Rio De Janeiro", country:"Brazil", bio:botafogo_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Botafogo_de_Futebol_e_Regatas_logo.svg/800px-Botafogo_de_Futebol_e_Regatas_logo.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Rio2016_Gerais_030_8069_-c-2016_GabrielHeusi_HeusiAction.jpg/450px-Rio2016_Gerais_030_8069_-c-2016_GabrielHeusi_HeusiAction.jpg", stadium_name:"Estádio Olímpico Nilton Santos
", address:"R. José dos Reis, 425 - Engenho de Dentro, Rio de Janeiro - RJ, 20770-001")
bragantino = Team.create(name:"RB Bragantino", city:"Bragança Paulista", country:"Brazil", bio:bragantino_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/9/9e/RedBullBragantino.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Est%C3%A1dio_Nabi.jpg/420px-Est%C3%A1dio_Nabi.jpg", stadium_name:"Estádio Nabi Abi Chedid
", address:"R. Emílio Colela - Jardim Nova Braganca, Bragança Paulista - SP, 12914-410")
cam = Team.create(name:"CAM", city:"Belo Horizonte", country:"Brazil", bio:cam_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Clube_Atl%C3%A9tico_Mineiro_crest.svg/800px-Clube_Atl%C3%A9tico_Mineiro_crest.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Atl%C3%A9tico_Mineiro_v_Botafogo%2C_Arena_MRV%2C_Horizonte%2C_2023.jpg/1280px-Atl%C3%A9tico_Mineiro_v_Botafogo%2C_Arena_MRV%2C_Horizonte%2C_2023.jpg", stadium_name:"Estádio Presidente Elias Kalil
", address:"Rua Cristina Maria de Assis, 202 - Califórnia, Belo Horizonte - MG, 30855-440")
corinthians = Team.create(name:"Corinthians", city:"Sao Paulo", country:"Brazil", bio:corinthians_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Sport_Club_Corinthians_Paulista_crest.svg/800px-Sport_Club_Corinthians_Paulista_crest.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/c/c6/ARENA_CORINTHIANS.jpg", stadium_name:"Neo Química Arena", address:"Avenida Miguel Ignácio Curi, 111
")
coritiba = Team.create(name:"Coritiba", city:"Coritiba", country:"Brazil", bio:coritiba_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Coritiba_FBC_%282011%29_-_PR.svg/270px-Coritiba_FBC_%282011%29_-_PR.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/CP2.jpg/405px-CP2.jpg", stadium_name:"Estádio Major Antônio Couto Pereira
", address:"Rua Ubaldino do Amaral, 37, Curitiba, PR, Brazil")
cruzeiro = Team.create(name:"Cruzeiro", city:"Belo Horizonte", country:"Brazil", bio:cruzeiro_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Cruzeiro_Esporte_Clube_%28logo%29.svg/632px-Cruzeiro_Esporte_Clube_%28logo%29.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Mineir%C3%A3o_%28Top_View%29.jpg/1280px-Mineir%C3%A3o_%28Top_View%29.jpg", stadium_name:"Estádio Governador Magalhães Pinto
", address:"Av. Antônio Abrahão Caram, 1001 - São José, Belo Horizonte - MG, 31275-000")
cuiaba = Team.create(name:"Cuiaba", city:"Cuiaba", country:"Brazil", bio:cuiaba_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/2/20/Cuiab%C3%A1EC2020.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Arena_Pantanal.jpg/1280px-Arena_Pantanal.jpg", stadium_name:"Arena Pantanal
", address:"R. Eça de Queiroz, 49 - Pantanal, Duque de Caxias - RJ, 25040-004")
flamengo = Team.create(name:"Flamengo", city:"Rio De Janeiro", country:"Brazil", bio:flamengo_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flamengo_braz_logo.svg/800px-Flamengo_braz_logo.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Maracana_2022.jpg/1280px-Maracana_2022.jpg", stadium_name:"Estádio Jornalista Mário Filho
", address:"Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ, 20271-130" )
fluminense = Team.create(name:"Fluminense", city:"Rio De Janeiro", country:"Brazil", bio:fluminense_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Fluminense_fc_logo.svg/800px-Fluminense_fc_logo.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Maracana_2022.jpg/1280px-Maracana_2022.jpg", stadium_name:"Estádio Jornalista Mário Filho
", address:"Av. Pres. Castelo Branco, Portão 3 - Maracanã, Rio de Janeiro - RJ, 20271-130")
fortaleza = Team.create(name:"Fortaleza", city:"Fortaleza", country:"Brazil", bio:fortaleza_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/4/40/FortalezaEsporteClube.svg", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Castel%C3%A3o_Arena_%285%29.jpg/1280px-Castel%C3%A3o_Arena_%285%29.jpg", stadium_name:"Arena Castelão
", address:"Av. Alberto Craveiro, 2901 - Castelão, Fortaleza - CE, 60861-211")
gremio = Team.create(name:"Gremio", city:"Porto Alegre", country:"Brazil", bio:gremio_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/7/7b/Gremio_logo.gif", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Arena_do_Gr%C3%AAmio_2014.jpg/1920px-Arena_do_Gr%C3%AAmio_2014.jpg", stadium_name:"Arena do Grêmio
  ", address:"Av. Padre Leopoldo Brentano, 110 - Portão 2 | - Humaitá, Porto Alegre - RS, 90250-590")
goias = Team.create(name:"Goias", city:"Goiania", country:"Brazil", bio:goias_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/f/ff/Goi%C3%A1sLogo21.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Est%C3%A1dio_Haile_Pinheiro_%28Serrinha%29_em_2020.jpg/1920px-Est%C3%A1dio_Haile_Pinheiro_%28Serrinha%29_em_2020.jpg", stadium_name:"Estádio da Serrinha
", address:"Av. Edmundo P. de Abreu, 721 - St. Bela Vista, Goiânia - GO, 74823-030")
inter = Team.create(name:"Internacional", city:"Porto Alegre", country:"Brazil", bio:inter_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Escudo_do_Sport_Club_Internacional.svg/1920px-Escudo_do_Sport_Club_Internacional.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Beira_Rio_Stadium.JPG/1280px-Beira_Rio_Stadium.JPG", stadium_name:"Estádio José Pinheiro Borda
", address:"Av. Padre Cacique, 621-1571")
palmeiras = Team.create(name:"Palmeiras", city:"Sao Paulo", country:"Brazil", bio:palmeiras_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/285px-Palmeiras_logo.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Imagens_da_Cidade_de_S%C3%A3o_Paulo_e_Zool%C3%B3gico_da_Capital_Paulista._%2847480340301%29.jpg/1280px-Imagens_da_Cidade_de_S%C3%A3o_Paulo_e_Zool%C3%B3gico_da_Capital_Paulista._%2847480340301%29.jpg", stadium_name:"Allianz Parque
", address:"Avenida Francisco Matarazzo, 1705, R. Palestra Itália, 200 - Água Branca, São Paulo - SP, 05001-200")
parana = Team.create(name:"Athletico PR", city:"Parana", country:"Brazil", bio:parana_bio, emblem:"https://upload.wikimedia.org/wikipedia/pt/c/c7/Club_Athletico_Paranaense_2019.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Arenadabaixada2.jpg/375px-Arenadabaixada2.jpg", stadium_name:"Ligga Arena
", address:"R. Buenos Aires, 1260 - Água Verde, Curitiba - PR, 80250-070")
santos = Team.create(name:"Santos", city:"Santos", country:"Brazil", bio:santos_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Santos_Logo.png/300px-Santos_Logo.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/4/47/Vila_Belmiro_pre-match_Santos_vs_Gr%C3%AAmio_2021.jpg", stadium_name:"Estádio Urbano Caldeira
", address:"Rua Princesa Isabel, Vila Belmiro neighborhood" )
sp = Team.create(name:"Sao Paulo", city:"Sao Paulo", country:"Brazil", bio:sp_bio, emblem:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Brasao_do_Sao_Paulo_Futebol_Clube.svg/1024px-Brasao_do_Sao_Paulo_Futebol_Clube.svg.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Est%C3%A1dio_do_Morumbi.jpg/1280px-Est%C3%A1dio_do_Morumbi.jpg", stadium_name:"Estádio Cícero Pompeu de Toledo
", address:"Praca Roberto Gomes Pedrosa, 1, São Paulo, SP")
vasco = Team.create(name:"Vasco Da Gama", city:"Rio De Janeiro", country:"Brazil", bio:vasco_bio, emblem:"https://upload.wikimedia.org/wikipedia/en/0/03/CR_Vasco_da_Gama_2021_logo.png", stadium:"https://upload.wikimedia.org/wikipedia/commons/7/72/Estadio_sao_januario_cropp.jpg", stadium_name:"Estádio Vasco da Gama
", address:"Av. Roberto Dinamite, 10 - Vasco da Gama, Rio de Janeiro - RJ, 20921-060")

# GAMES


teams = [
  america, bahia, botafogo, bragantino, cam, corinthians, coritiba, cuiaba, cruzeiro, flamengo,
  fluminense, fortaleza, gremio, goias, inter, palmeiras, parana, santos, sp, vasco
]

date = Date.today
20.times do
  teams.shuffle.each_slice(2).with_index do |(home_team, away_team), i|
    Game.create(date: date, city: home_team.city, home_team: home_team, away_team: away_team)
    date = date.next_day if ((i + 1) % 5).zero? # Advance to the next day after 5 games (10 teams)
  end
end
