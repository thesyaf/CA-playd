# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# data = [{"id"=>26351, "name"=>"Batman", "image"=>"https://www.giantbomb.com/api/image/scale_small/1790458-batman__j_.jpg"}, {"id"=>34176, "name"=>"Batman", "image"=>"https://www.giantbomb.com/api/image/scale_small/1710721-bman1.jpg"}, {"id"=>16856, "name"=>"Batman", "image"=>"https://www.giantbomb.com/api/image/scale_small/896668-940198_89941_front.jpg"}]
#
#
# # create random email generator and create users (i.e. 5x)
#
# # create the games, each time assigning the user id to a random value in a range  (i.e. [1..users.length])
#
# user1 = User.create(email: "a@a.com", password: "123qwe", encrypted_password: "123qwe")
# profile1 = Profile.create(user_id: user1.id)
# wantedgame1 = WantedGame.create(profile_id: profile1.id)
#
# data.length.times do |game|
#   Game.create!(... user_id: )



user1 = User.create(
  email: "user1@one.com",
  password: "123qwe",
  stripe_id: "cus_BheNAl7Os6M3vi"
)

profile1 = Profile.create(
  first_name: "First",
  last_name: "User",
  user_id: user1.id,
  username: "Sandman"
)

Ownedgame.create(
  game_api_id: "52647",
  game_name: "Destiny 2",
  game_image: "https://www.giantbomb.com/api/image/scale_small/2929252-destiny%202%20v3.jpg",
  user_id: user1.id
)

Wantedgame.create(
  game_api_id: "56733",
  game_name: "Super Mario Odyssey",
  game_image: "https://www.giantbomb.com/api/image/scale_small/2972168-smoboxartfinal.jpg",
  user_id: user1.id
)


user2 = User.create(
  email: "user2@two.com",
  password: "123qwe",
  stripe_id: "cus_BhhVjwUv40Dtt2"
)

profile1 = Profile.create(
  first_name: "Second",
  last_name: "User",
  user_id: user2.id,
  username: "Venom"
)

Ownedgame.create(
  game_api_id: "20457",
  game_name: "Grand Theft Auto IV",
  game_image: "https://www.giantbomb.com/api/image/scale_small/2446670-gta_1446_a023.jpg",
  user_id: user2.id
)

Wantedgame.create(
  game_api_id: "52647",
  game_name: "Destiny 2",
  game_image: "https://www.giantbomb.com/api/image/scale_small/2929252-destiny%202%20v3.jpg",
  user_id: user2.id
)
