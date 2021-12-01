require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Friendship.destroy_all
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
athletisme = Sport.create!(name: "Athletics")
natation = Sport.create!(name: "Swimming")

user1 = User.create!(email: "test@gmail.com", password: "123456", username: "test_account", age: 24, name: "Matou", first_name: "Hervé", description:"I've just arrived in Paris for a new job. I'm currently searching for some buddies to play sports during the weekend. I like to play football 5-5 and also handball. I also like to run and swim during my free time !")
FavoriteSport.create!(user: user1, sport: football)
FavoriteSport.create!(user: user1, sport: handball)
FavoriteSport.create!(user: user1, sport: athletisme)
FavoriteSport.create!(user: user1, sport: natation)

user2 = User.create!(email: "test2@gmail.com", password: "123456", username: "test2_account", age: 28, name: "Etchebest", first_name: "Philippe", description:"I've been in Paris for several years now. I like to play volleyball with my friends but also searching for new friends in order to improve my skills ! Also available to play some petanques. Moreover, i would like to start playing handball during the weekend.")
FavoriteSport.create!(user: user2, sport: volleyball)
FavoriteSport.create!(user: user2, sport: handball)
FavoriteSport.create!(user: user2, sport: petanque)

user3 = User.create!(email: "jb@gmail.com", password: "123456", username: "jb_account", age: 24, name: "Guelaud", first_name: "Jean-Baptiste", description:"I'm searching for new tennis players in order to do some games during the weekend. Moreover, i'm search for some teammates to play football on Tuesday and to play Volleyball on Thursday. Add me as a friend if you are interested !")
FavoriteSport.create!(user: user3, sport: volleyball)
FavoriteSport.create!(user: user3, sport: football)
FavoriteSport.create!(user: user3, sport: tennis)

user4 = User.create!(email: "victor@gmail.com", password: "123456", username: "victor_account", age: 27, name: "Chomette", first_name: "Victor", description:"I have a very good level to play tennis if people want to play around the 15th district. I also play pétanque regularly and am looking for ping-pong partners to play with on Monday evenings after work.")
FavoriteSport.create!(user: user4, sport: tennis)
FavoriteSport.create!(user: user4, sport: pingpong)
FavoriteSport.create!(user: user4, sport: petanque)

user5 = User.create!(email: "pierre@gmail.com", password: "123456", username: "pierre_account", age: 30, name: "Moulinier", first_name: "Pierre", description:"Ping-pong is my passion. Add me if you are looking for a formidable opponent! I am also available to play 2vs2 basketball during the week and available to play matches at the weekend. I am also trying to learn Handball in my free time. ")
FavoriteSport.create!(user: user5, sport: pingpong)
FavoriteSport.create!(user: user5, sport: handball)
FavoriteSport.create!(user: user5, sport: basketball)

user6 = User.create!(email: "christophe@gmail.com", password: "123456", username: "christophe_account", age: 26, name: "Potier", first_name: "Christophe", description:"I am a fan of swimming, which I do quite regularly. I play petanque at weekends with my colleagues.  I am also looking for a colleague to play ping-pong from time to time and a team to play football at suzanne lenglen usually.")
FavoriteSport.create!(user: user6, sport: football)
FavoriteSport.create!(user: user6, sport: pingpong)
FavoriteSport.create!(user: user6, sport: petanque)
FavoriteSport.create!(user: user6, sport: natation)

user7 = User.create!(email: "hugo@gmail.com", password: "123456", username: "hugo_account", age: 45, name: "Laporte", first_name: "Hugo", description:"Having been a professional basketball player, I can give free lessons during the weekend! I am also looking for partners to organise pétanque tournaments. And I play handball regularly with my team but we need substitutes for those interested!")
FavoriteSport.create!(user: user7, sport: basketball)
FavoriteSport.create!(user: user7, sport: handball)
FavoriteSport.create!(user: user7, sport: petanque)

user8 = User.create!(email: "paul@gmail.com", password: "123456", username: "paul_account", age: 35, name: "Hernandez", first_name: "Paul", description:"With a friend we are looking for two basketball players to play games during the weekend. I am also available for tennis matches on any day. Finally, I am a sports coach so I can train you for athletic races.  Contact me if you are interested! ")
FavoriteSport.create!(user: user8, sport: tennis)
FavoriteSport.create!(user: user8, sport: basketball)
FavoriteSport.create!(user: user8, sport: athletisme)

field1 = Field.create!(name: "Stade Emile Anthoine", address: "2 Av. de Suffren, 75007 Paris", field_type: 2, status: 0, description: "Sports center available with an incredible view of the Eiffel Tower.")
FieldSport.create!(field: field1, sport: football)
FieldSport.create!(field: field1, sport: athletisme)
FieldSport.create!(field: field1, sport: volleyball)
FieldSport.create!(field: field1, sport: natation)
Chatroom.create!(field: field1)
picturefield1 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/12/14/37/14/a2436222-91c1-40dd-aa87-c31668dc6f33/EmileAnthoine.jpg')
field1.photos.attach(io: picturefield1, filename: 'Stade Emile Anthoine', content_type: 'image/png')
picturefield11 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/08/12/22/46/3b5558ec-0192-4cce-9cc8-33e7854c9565/EmileAnthoine.jpg')
field1.photos.attach(io: picturefield11, filename: 'Gymnase Emile Anthoine', content_type: 'image/png')
picturefield111 = URI.open('https://www.api-site.paris.fr/equipements/2021/06/09/09/38/20/0276ea34-9fa5-402e-8c55-8dbc5c7fe856/1.png')
field1.photos.attach(io: picturefield111, filename: 'Piscine Emile Anthoine', content_type: 'image/png')

field2 = Field.create!(name: "Parc André-Citroën", address: "2 Rue Cauchy, 75015 Paris", field_type: 1, status: 0, description: "Self-service table tennis available. Possibility to play a game of pétanque in the nearby area.")
FieldSport.create!(field: field2, sport: petanque)
FieldSport.create!(field: field2, sport: pingpong)
Chatroom.create!(field: field2)
# begin
  picturefield2 = URI.open('https://www.api-site.paris.fr/equipements/2019/12/13/11/57/46/cb099fa8-d248-40da-b4c5-4527a6dc47fe/Parc_Andre_Citroen-27.jpg')
  picturefield22 = URI.open('https://www.api-site.paris.fr/equipements/2021/11/10/11/27/05/f3baab67-92b2-40ff-bf7e-70ffdd7bd2bc/86037_-_Serre_du_Parc_Andre-Citroen-2.jpg')
# rescue
# end
field2.photos.attach(io: picturefield2, filename: 'Parc André-Citroën', content_type: 'image/png')
field2.photos.attach(io: picturefield22, filename: 'Parc André-Citroën2', content_type: 'image/png')

field3 = Field.create!(name: "Stade Suzanne Lenglen", address: "4 All. de la Bertelotte, 75015 Paris", field_type: 2, status: 0, description: "Sports complex with a number of football and tennis courts and a city for playing basketball. Indoor and outdoor tennis courts with different types of surfaces.")
FieldSport.create!(field: field3, sport: tennis)
FieldSport.create!(field: field3, sport: pingpong)
FieldSport.create!(field: field3, sport: football)
FieldSport.create!(field: field3, sport: basketball)
FieldSport.create!(field: field3, sport: athletisme)
Chatroom.create!(field: field3)
picturefield3 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/12/14/46/44/44b14f99-0e0e-4872-a193-1b2061fc9004/SuzanneLenglen.jpg')
picturefield33 = URI.open('https://www.api-site.paris.fr/equipements/2021/03/05/11/15/31/8f12e92d-18ea-405e-ba4a-4728b220c458/4.jpg')

field3.photos.attach(io: picturefield3, filename: 'Stade Suzanne Lenglen', content_type: 'image/png')
field3.photos.attach(io: picturefield33, filename: 'Stade Suzanne Lenglen2', content_type: 'image/png')

field4 = Field.create!(name: "City Stade 15ème", address: "Esplanade Max Guedj, Rue de la Montagne d'Aulas, 75015 Paris", field_type: 1, status: 0, description: "Playground stadium available in the 15th district of Paris.")
FieldSport.create!(field: field4, sport: basketball)
FieldSport.create!(field: field4, sport: football)
Chatroom.create!(field: field4)
picturefield4 = URI.open('https://images.unsplash.com/photo-1549831144-f197e398adad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
picturefield44 = URI.open('https://images.unsplash.com/photo-1473663065522-33361623fa27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')

field4.photos.attach(io: picturefield4, filename: 'City Stade 15ème', content_type: 'image/png')
field4.photos.attach(io: picturefield44, filename: 'City Stade 15ème2', content_type: 'image/png')

field5 = Field.create!(name: "Stade Léo Lagrange", address: "68 Bd Poniatowski, 75012 Paris", field_type: 2, status: 0, description: "Sports center offering a wide range of sports.")
FieldSport.create!(field: field5, sport: athletisme)
FieldSport.create!(field: field5, sport: football)
FieldSport.create!(field: field5, sport: tennis)
FieldSport.create!(field: field5, sport: basketball)
FieldSport.create!(field: field5, sport: handball)
FieldSport.create!(field: field5, sport: volleyball)
Chatroom.create!(field: field5)
picturefield5 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/12/15/21/23/83a0b3a6-0242-4b8b-8e56-387f10c04925/LeoLagrange.jpg')
picturefield55 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/11/09/45/12/95a84289-9860-4cdb-9612-95d9ed00ac65/LeoLagrange.jpg')

field5.photos.attach(io: picturefield5, filename: 'Stade Léo Lagrange', content_type: 'image/png')
field5.photos.attach(io: picturefield55, filename: 'Stade Léo Lagrange2', content_type: 'image/png')

field6 = Field.create!(name: "City Stade - Square Docteur Calmette", address: "72 Bd Lefebvre, 75015 Paris", field_type: 1, status: 1, description:"Located in the Georges Brassens Park, this playground allows you to play basketball and football. Ping-Pong tables are also available.")
FieldSport.create!(field: field6, sport: pingpong)
FieldSport.create!(field: field6, sport: basketball)
FieldSport.create!(field: field6, sport: football)
Chatroom.create!(field: field6)
picturefield6 = URI.open('https://www.api-site.paris.fr/equipements/2018/07/27/13/21/44/6586f29c-ccc4-4d96-ae18-35803c110695/APO_3105.jpg')
picturefield66 = URI.open('https://www.api-site.paris.fr/equipements/2018/07/27/13/21/44/361468c2-64b4-478f-8b84-64ba7e264fec/APO_3097.jpg')

field6.photos.attach(io: picturefield6, filename: 'City Stade - Square Docteur Calmette', content_type: 'image/png')
field6.photos.attach(io: picturefield66, filename: 'City Stade - Square Docteur Calmette2', content_type: 'image/png')

field7 = Field.create!(name: "City Stade Passage Dumas", address: "16 Pass. Dumas, 75011 Paris", field_type: 1, status: 2, description: "Located next to the Philippe Auguste sports centre, this playground is perfect for Basketball and Football players.")
FieldSport.create!(field: field7, sport: basketball)
FieldSport.create!(field: field7, sport: football)
Chatroom.create!(field: field7)
picturefield7 = URI.open('https://www.api-site.paris.fr/equipements/2021/06/07/15/45/18/50582874-f79c-4bf9-bbf8-91349eb1e675/vincentaurol2.jpg')
picturefield77 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/08/15/57/34/0edef739-cf57-4cb2-b6f8-3713987397ae/Rigal.JPG')

field7.photos.attach(io: picturefield7, filename: 'City Stade Passage Dumas', content_type: 'image/png')
field7.photos.attach(io: picturefield77, filename: 'City Stade Passage Dumas2', content_type: 'image/png')

field8 = Field.create!(name: "Terrain-Petanque", address: "57 Quai de Grenelle Paris, 75015", field_type: 1, status: 0, description: "Three self-service petanque courts are available along the shores of the Seine in the 15th district of Paris.  Don't forget to bring your own material.")
FieldSport.create!(field: field8, sport: petanque)
Chatroom.create!(field: field8)
picturefield8 = URI.open('https://www.api-site.paris.fr/equipements/2018/05/09/12/00/55/839ae86c-9dd9-4436-bbb8-fdf34d20384c/232413.jpg')
picturefield88 = URI.open('https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80')

field8.photos.attach(io: picturefield8, filename: 'Terrain-Petanque', content_type: 'image/png')
field8.photos.attach(io: picturefield88, filename: 'Terrain-Petanque2', content_type: 'image/png')

field9 = Field.create!(name: "Tep Des Amandiers", address: "21 Rue des Cendriers, 75020 Paris", field_type: 1, status: 0, description: "Sports field available for basketball and football with an athletics track. Sports centre available in the area.")
FieldSport.create!(field: field9, sport: athletisme)
FieldSport.create!(field: field9, sport: basketball)
FieldSport.create!(field: field9, sport: football)
Chatroom.create!(field: field9)
picturefield9 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/14/11/38/26/c32d5454-68c6-461b-b482-033a78be749c/Amandiers.jpg')
picturefield99 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/14/14/23/21/a5ed5271-8092-4096-b80a-3dc535ef65c3/Lemercier.jpg')

field9.photos.attach(io: picturefield9, filename: 'Tep Des Amandiers', content_type: 'image/png')
field9.photos.attach(io: picturefield99, filename: 'Tep Des Amandiers2', content_type: 'image/png')

field10 = Field.create!(name: "Terrain de sport Duperré", address: "22 rue Duperré 75009 Paris", field_type: 1, status: 1, description: "The most beautiful basketball court in Paris.Located in the 9th district of Paris, this court remains open to the public and attracts many tourists.")
FieldSport.create!(field: field10, sport: basketball)
Chatroom.create!(field: field10)
picturefield10 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/14/11/47/58/4ce0109f-f56f-4ef7-9697-6d1edbb6c639/Duperre.jpg')
picturefield100 = URI.open('https://images.unsplash.com/photo-1565106305526-02f1f6e0e74b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')

field10.photos.attach(io: picturefield10, filename: 'Terrain de sport Duperré', content_type: 'image/png')
field10.photos.attach(io: picturefield100, filename: 'Terrain de sport Duperré2', content_type: 'image/png')

field11 = Field.create!(name: "Square Paturle", address: "1 rue Paturle 75014 Paris", field_type: 1, status: 0, description: "Basketball court open 24 hours a day.")
FieldSport.create!(field: field11, sport: basketball)
Chatroom.create!(field: field11)
picturefield11 = URI.open('https://www.api-site.paris.fr/equipements/2018/05/09/16/14/21/a37f3c3b-e2f5-4e26-98fa-ba63b1905b2e/TEP-header.jpg')
picturefield111 = URI.open('https://images.unsplash.com/photo-1443472933321-f2617633c81b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')

field11.photos.attach(io: picturefield11, filename: 'Square Paturle', content_type: 'image/png')
field11.photos.attach(io: picturefield111, filename: 'Square Paturle', content_type: 'image/png')

field12 = Field.create!(name: "Les Arènes de Lutèce", address: "49 rue Monge, 75005 Paris", field_type: 1, status: 0, description: "Between history and hobbies, enjoy a nice game of pétanque in the heart of the Arènes de Lutèce!")
FieldSport.create!(field: field12, sport: petanque)
Chatroom.create!(field: field12)
picturefield12 = URI.open('https://www.api-site.paris.fr/equipements/2021/11/16/14/56/31/4ed8f0ff-2fd8-4490-8c6d-241ff29a1762/74091_-_Square_des_Arenes_de_Lutece_et_Square_Capitan-3.jpg')
picturefield122 = URI.open('https://www.api-site.paris.fr/equipements/2018/07/27/14/13/48/572650c2-d7be-464f-8edd-a6fa84cb78c8/APO_2632.jpg')

field12.photos.attach(io: picturefield12, filename: 'Les Arènes de Lutèce', content_type: 'image/png')
field12.photos.attach(io: picturefield122, filename: 'Les Arènes de Lutèce2', content_type: 'image/png')

field13 = Field.create!(name: "Square Pierre-de-Gaulle", address: "2 Place du Président Mithouard, 75007 Paris", field_type: 1, status: 0, description: "Self-service table tennis table in the 7th district of Paris.")
FieldSport.create!(field: field13, sport: pingpong)
Chatroom.create!(field: field13)
picturefield13 = URI.open('https://www.api-site.paris.fr/equipements/2018/08/20/14/07/09/0e793905-64c7-48ee-939c-a825eb1ab078/Square_Pierre_de_Gaulle-2.jpg')
picturefield133 = URI.open('https://www.api-site.paris.fr/equipements/2018/08/20/14/07/11/78b6134d-76dc-4b5b-babc-6cfdd2c2040c/Square_Pierre_de_Gaulle-3.jpg')

field13.photos.attach(io: picturefield13, filename: 'Square Pierre-de-Gaulle', content_type: 'image/png')
field13.photos.attach(io: picturefield133, filename: 'Square Pierre-de-Gaulle2', content_type: 'image/png')

field14 = Field.create!(name: "Playground du Champs-de-Mars", address: "2 All. Adrienne Lecouvreur, 75007 Paris", field_type: 1, status: 0, description: "Outdoor site located on the Champs-De-Mars. Asphalt court. Free ground for petanque.")
FieldSport.create!(field: field14, sport: petanque)
FieldSport.create!(field: field14, sport: basketball)
FieldSport.create!(field: field14, sport: football)
Chatroom.create!(field: field14)
picturefield14 = URI.open('https://www.api-site.paris.fr/equipements/2018/06/25/09/46/44/0759444c-dfb2-4ec9-90a9-dd82710ad38b/27759.jpg')
picturefield144 = URI.open('https://images.unsplash.com/photo-1531264993164-04a70aa46453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=373&q=80')

field14.photos.attach(io: picturefield14, filename: 'Playground du Champs-de-Mars', content_type: 'image/png')
field14.photos.attach(io: picturefield144, filename: 'Playground du Champs-de-Mars2', content_type: 'image/png')

field15 = Field.create!(name: "Terrain Multisports Principal Philippe Auguste", address: "68 Av. Philippe Auguste, 75011 Paris", field_type: 2, status: 0, description:"Multi-sports field for basketball and football in the 11th district of Paris on a synthetic pitch 40 meters long and 20 meters wide. Gymnasium available with changing room.")
FieldSport.create!(field: field15, sport: volleyball)
FieldSport.create!(field: field15, sport: basketball)
FieldSport.create!(field: field15, sport: football)
FieldSport.create!(field: field15, sport: tennis)
FieldSport.create!(field: field15, sport: handball)
Chatroom.create!(field: field15)
picturefield15 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/14/16/25/43/cd02687f-d7a7-4a3c-b825-488f7b92bfa9/philippeauguste.jpg')
picturefield155 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/11/13/47/08/e2d72278-6b87-494a-bf49-36ec290af6e6/PhilippeAuguste.jpg')

field15.photos.attach(io: picturefield15, filename: 'Terrain Multisports Principal Philippe Auguste', content_type: 'image/png')
field15.photos.attach(io: picturefield155, filename: 'Terrain Multisports Principal Philippe Auguste2', content_type: 'image/png')

field16 = Field.create!(name: "Piscine Jacqueline Auriol ex Beaujon", address: "7 Allée Louis de Funès 75008 Paris", field_type: 0, status: 0, description: "Swimming pool available in the heart of the 8th district. Various activities available (aquagim, swimming certificate..). Price per unit: 3,50€.")
FieldSport.create!(field: field16, sport: natation)
Chatroom.create!(field: field16)
picturefield16 = URI.open('https://www.api-site.paris.fr/equipements/2018/06/22/16/11/14/8207cb6e-1460-446c-aad3-5e42c76ae0a0/Piscine-Beaujon-public-header.jpg')
picturefield166 = URI.open('https://images.unsplash.com/photo-1519315901367-f34ff9154487?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
field16.photos.attach(io: picturefield16, filename: 'Piscine 8e', content_type: 'image/png')
field16.photos.attach(io: picturefield166, filename: 'Piscine 2 8e', content_type: 'image/png')

field17 = Field.create!(name: "Piscine Paul Valeyre", address: "24 rue Marguerite de Rochechouart 75009 PARIS", field_type: 0, status: 0, description: "Located in the 9th district of Paris, this place offers different activities at a price of 2€ each for the entrance. Open from Monday to Sunday, opening hours may vary according to the day.")
FieldSport.create!(field: field17, sport: natation)
Chatroom.create!(field: field17)
picturefield17 = URI.open('https://www.api-site.paris.fr/equipements/2018/06/22/16/20/36/128b2cd5-a51b-41d4-ba85-88bca5437381/Valeyre-header.jpg')
picturefield177 = URI.open('https://images.unsplash.com/photo-1558617320-e695f0d420de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
field17.photos.attach(io: picturefield17, filename: 'Piscine 9eme', content_type: 'image/png')
field17.photos.attach(io: picturefield177, filename: 'Piscine 2 9eme', content_type: 'image/png')

field18 = Field.create!(name: "Gymnase Charles Mildé ex Saussure", address: "38 rue Georges Picquart 75017 Paris", field_type: 0, status: 2, description: "New sports centre under construction in the heart of the 17th arrondissement. Inauguration in the next few days!")
FieldSport.create!(field: field18, sport: basketball)
FieldSport.create!(field: field18, sport: handball)
FieldSport.create!(field: field18, sport: volleyball)
Chatroom.create!(field: field18)
picturefield18 = URI.open('https://www.api-site.paris.fr/equipements/2021/10/05/10/36/55/a90c63db-b8bc-4ef0-97dc-5ac9994f3a9f/Saussure.jpg')
picturefield188 = URI.open('https://images.unsplash.com/photo-1553627220-92f0446b6a5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
field18.photos.attach(io: picturefield18, filename: 'Gymnase 17eme', content_type: 'image/png')
field18.photos.attach(io: picturefield188, filename: 'Gymnase 2 17eme', content_type: 'image/png')
