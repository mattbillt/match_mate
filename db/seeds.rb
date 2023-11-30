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


vasco = Team.create(name:"Vasco Da Gama", city:"Rio De Janerio", country:"Brazil", bio:"TODO")
corinthians = Team.create(name:"Corinthians", city:"Sao Paulo", country:"Brazil", bio:"TODO")
santos = Team.create(name:"Santos", city:"Santos", country:"Brazil", bio:"TODO")
fluminense = Team.create(name:"Fluminense", city:"Rio De Janeiro", country:"Brazil", bio:"TODO")
flamengo = Team.create(name:"Flamengo", city:"Rio De Janerio", country:"Brazil", bio:"TODO")
cam = Team.create(name:"CAM", city:"Belo Horizonte", country:"Brazil", bio:"TODO")
bahia = Team.create(name:"Bahia", city:"Salvador", country:"Brazil", bio:"TODO")
sp = Team.create(name:"Sao Paulo", city:"Sao Paulo", country:"Brazil", bio:"TODO")
coritiba = Team.create(name:"Coritiba", city:"Coritiba", country:"Brazil", bio:"TODO")
botafogo = Team.create(name:"Botafogo", city:"Rio De Janerio", country:"Brazil", bio:"TODO")
palmeiras = Team.create(name:"Palmeiras", city:"Sao Paulo", country:"Brazil", bio:"TODO")
america = Team.create(name:"America MG", city:"Belo Horizonte", country:"Brazil", bio:"TODO")

Game.create(date:"2023-11-28", city:"Rio De Janeiro", home_team:vasco , away_team:corinthians)
Game.create(date:"2023-11-29", city:"Santos", home_team:santos, away_team:fluminense)
Game.create(date:"2023-11-29", city:"Rio De Janeiro", home_team:flamengo, away_team:cam)
Game.create(date:"2023-11-29", city:"Bahia", home_team:bahia, away_team:sp)
Game.create(date:"2023-11-29", city:"Coritiba", home_team:coritiba, away_team:botafogo)
Game.create(date:"2023-11-29", city:"Sao Paulo", home_team:palmeiras, away_team:america)
