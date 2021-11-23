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
FavoriteSport.create!(user: user8, sport: athletisme)

field1 = Field.create!(name: "Stade Emile Anthoine", address: "2 Av. de Suffren, 75007 Paris", field_type: 2, status: 0, description: "Centre sportif disponible avec une vue incroyable sur la tour Eiffel.")
FieldSport.create!(field: field1, sport: football)
FieldSport.create!(field: field1, sport: athletisme)
FieldSport.create!(field: field1, sport: volleyball)

field2 = Field.create!(name: "Parc André-Citroën", address: "2 Rue Cauchy, 75015 Paris", field_type: 1, status: 0, description: "Table de ping-pong disponible en libre service. Possibilité d'effectuer une partie de pétanque aux alentours.")
FieldSport.create!(field: field2, sport: petanque)
FieldSport.create!(field: field2, sport: pingpong)

field3 = Field.create!(name: "Stade Suzanne Lenglen", address: "4 All. de la Bertelotte, 75015 Paris", field_type: 2, status: 0, description: "Complexe sportif avec une multitude de terrain de football et de tennis ainsi qu'un city permettant de pratiquer du basket. Terrain de tennis couvert et en extérieur avec différent types de surfaces.")
FieldSport.create!(field: field3, sport: tennis)
FieldSport.create!(field: field3, sport: pingpong)
FieldSport.create!(field: field3, sport: football)
FieldSport.create!(field: field3, sport: basketball)
FieldSport.create!(field: field3, sport: athletisme)

field4 = Field.create!(name: "City Stade 15ème", address: "Esplanade Max Guedj, Rue de la Montagne d'Aulas, 75015 Paris", field_type: 1, status: 0, description: "City-stade en bitume disponible dans le 15eme arrondissement de Paris.")
FieldSport.create!(field: field4, sport: basketball)
FieldSport.create!(field: field4, sport: football)

field5 = Field.create!(name: "Stade Léo Lagrange", address: "68 Bd Poniatowski, 75012 Paris", field_type: 2, status: 0, description: "Complexe sportif permettant de pratiquer une multitude de sport.")
FieldSport.create!(field: field5, sport: athletisme)
FieldSport.create!(field: field5, sport: football)
FieldSport.create!(field: field5, sport: tennis)
FieldSport.create!(field: field5, sport: basketball)
FieldSport.create!(field: field5, sport: handball)
FieldSport.create!(field: field5, sport: volleyball)

field6 = Field.create!(name: "City Stade - Square Docteur Calmette", address: "72 Bd Lefebvre, 75015 Paris", field_type: 1, status: 1, description:"Situé au sein du Parc Georges Brassens, ce city-stade permet de jouer au basket et au foot. Des tables de Ping-Pong sont également disponible.")
FieldSport.create!(field: field6, sport: pingpong)
FieldSport.create!(field: field6, sport: basketball)
FieldSport.create!(field: field6, sport: football)

field7 = Field.create!(name: "City Stade Passage Dumas", address: "16 Pass. Dumas, 75011 Paris", field_type: 1, status: 2, description: "Situé à coté du centre sportif Philippe Auguste, ce city stade permet de jouer au basketball et au football en libre-service.")
FieldSport.create!(field: field7, sport: basketball)
FieldSport.create!(field: field7, sport: football)

field8 = Field.create!(name: "Terrain-Petanque", address: "57 Quai de Grenelle Paris, 75015", field_type: 1, status: 0, description: "Trois terrains de pétanque en libre-service, disponible le long des quais de Seine dans le 15eme arrondissement. N'oubliez pas de ramener votre materiel.")
FieldSport.create!(field: field8, sport: petanque)

field9 = Field.create!(name: "Tep Des Amandiers", address: "21 Rue des Cendriers, 75020 Paris", field_type: 1, status: 0, description: "Terrain mutltisports disponible pour le basket et le football accompagné d'une piste d'athlétisme. Centre sportif à disposition dans un rayon proche.")
FieldSport.create!(field: field9, sport: athletisme)
FieldSport.create!(field: field9, sport: basketball)
FieldSport.create!(field: field9, sport: football)

field10 = Field.create!(name: "Terrain de sport Duperré", address: "22 rue Duperré 75009 Paris", field_type: 1, status: 1, description: "Plus beaux terrains de Basket de la ville de Paris. Situé dans le 9eme arrondissement, ce terrain reste ouvert au public et attire nombreux touristes.")
FieldSport.create!(field: field10, sport: basketball)

field11 = Field.create!(name: "Square Paturle", address: "1 rue Paturle 75014 Paris", field_type: 1, status: 0, description: "Terrain de Basket ouvert 24h/24.")
FieldSport.create!(field: field11, sport: basketball)

field12 = Field.create!(name: "Les Arènes de Lutèce", address: "49 rue Monge, 75005 Paris", field_type: 1, status: 0, description: "Entre histoire et loisir, profitez d'une belle partie de pétanque en plein coeur des Arènes de Lutèce !")
FieldSport.create!(field: field12, sport: petanque)

field13 = Field.create!(name: "Square Pierre-de-Gaulle", address: "2 Place du Président Mithouard, 75007 Paris", field_type: 1, status: 0, description: "Table de Ping-Pong en libre service dans le 7eme arrondissement de Paris.")
FieldSport.create!(field: field13, sport: pingpong)

field14 = Field.create!(name: "Playground du Champs-de-Mars", address: "2 All. Adrienne Lecouvreur, 75007 Paris", field_type: 1, status: 0, description: "Terrain extérieur situé sur le Champs-De-Mars. Terrain en bitume. Terrain libre pour la pétanque.")
FieldSport.create!(field: field14, sport: petanque)
FieldSport.create!(field: field14, sport: basketball)
FieldSport.create!(field: field14, sport: football)

field15 = Field.create!(name: "Terrain Multisports Principal Philippe Auguste", address: "68 Av. Philippe Auguste, 75011 Paris", field_type: 2, status: 0, description:"Terrain multisports de basket et foot dans le 11e arrondissement sur un terrain en synthétique de longueur 40m et largeur 20 m. Gymnase disponible avec vestiaire.")
FieldSport.create!(field: field15, sport: volleyball)
FieldSport.create!(field: field15, sport: basketball)
FieldSport.create!(field: field15, sport: football)
FieldSport.create!(field: field15, sport: tennis)
