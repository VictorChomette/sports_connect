# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Sport.destroy_all
Field.destroy_all

football = Sport.create!(name: "Football")
basketball = Sport.create!(name: "Basketball")
tennis = Sport.create!(name: "Tennis")
handball = Sport.create!(name: "Handball")
volleyball = Sport.create!(name: "Volleyball")
petanque = Sport.create!(name: "Pétanque")
pingpong = Sport.create!(name: "Ping-Pong")
athletisme = Sport.create!(name: "Athlétisme")

user1 = User.create!(email: "test@gmail.com", password: "123456", username: "test_account", age: 24)
FavoriteSport.create!(user: user1, sport: football)
FavoriteSport.create!(user: user1, sport: handball)
FavoriteSport.create!(user: user1, sport: athletisme)

user2 = User.create!(email: "test2@gmail.com", password: "123456", username: "test2_account", age: 28)
FavoriteSport.create!(user: user2, sport: volleyball)
FavoriteSport.create!(user: user2, sport: handball)
FavoriteSport.create!(user: user2, sport: petanque)

user3 = User.create!(email: "jb@gmail.com", password: "123456", username: "jb_account", age: 24)
FavoriteSport.create!(user: user3, sport: volleyball)
FavoriteSport.create!(user: user3, sport: football)
FavoriteSport.create!(user: user3, sport: tennis)

user4 = User.create!(email: "victor@gmail.com", password: "123456", username: "victor_account", age: 27)
FavoriteSport.create!(user: user4, sport: tennis)
FavoriteSport.create!(user: user4, sport: pingpong)
FavoriteSport.create!(user: user4, sport: petanque)

user5 = User.create!(email: "pierre@gmail.com", password: "123456", username: "pierre_account", age: 30)
FavoriteSport.create!(user: user5, sport: pingpong)
FavoriteSport.create!(user: user5, sport: handball)
FavoriteSport.create!(user: user5, sport: basketball)

user6 = User.create!(email: "christophe@gmail.com", password: "123456", username: "christophe_account", age: 26)
FavoriteSport.create!(user: user6, sport: football)
FavoriteSport.create!(user: user6, sport: pingpong)
FavoriteSport.create!(user: user6, sport: petanque)

user7 = User.create!(email: "hugo@gmail.com", password: "123456", username: "hugo_account", age: 45)
FavoriteSport.create!(user: user7, sport: basketball)
FavoriteSport.create!(user: user7, sport: handball)
FavoriteSport.create!(user: user7, sport: petanque)

user8 = User.create!(email: "paul@gmail.com", password: "123456", username: "paul_account", age: 35)
FavoriteSport.create!(user: user8, sport: tennis)
FavoriteSport.create!(user: user8, sport: basketball)
FavoriteSport.create!(user: user1, sport: athletisme)

field1 = Field.create!(name: "Stade Emile Anthoine", address: "2 Av. de Suffren, 75007 Paris", field_types: 2, status: 0)
FieldSport.create!(field: field1, sport: football)
FieldSport.create!(field: field1, sport: athletisme)
FieldSport.create!(field: field1, sport: volleyball)

field2 = Field.create!(name: "Parc André-Citroën", address: "2 Rue Cauchy, 75015 Paris", field_types: 1, status: 0)
FieldSport.create!(field: field2, sport: petanque)
FieldSport.create!(field: field2, sport: pingpong)

field3 = Field.create!(name: "Stade Suzanne Lenglen", address: "4 All. de la Bertelotte, 75015 Paris", field_types: 2, status: 0)
FieldSport.create!(field: field3, sport: tennis)
FieldSport.create!(field: field3, sport: pingpong)
FieldSport.create!(field: field3, sport: football)
FieldSport.create!(field: field3, sport: basketball)
FieldSport.create!(field: field3, sport: athletisme)

field4 = Field.create!(name: "City Stade", address: "Esplanade Max Guedj, Rue de la Montagne d'Aulas, 75015 Paris", field_types: 1, status: 0)
FieldSport.create!(field: field4, sport: basketball)
FieldSport.create!(field: field4, sport: football)
