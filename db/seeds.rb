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

user1 = User.create!(email: "test@gmail.com", password: "123456", username: "test_account", age: 24)
FavoriteSport.create!(user: user1, sport: football)
FavoriteSport.create!(user: user1, sport: handball)
