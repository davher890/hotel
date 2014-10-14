namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_hotels
    make_players
    make_relationships
  end
end

def make_users
  admin = User.create!(name:     "david",
                       email:    "davidh15@hotmail.com",
                       password: "davidi",
                       password_confirmation: "davidi",
                       admin: true)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all.limit(6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end

def make_hotels

  Hotel.create!(name:           "Boomerang",
                land: 500,
                entrance: 100,
                main_building: 1800,
                extension1: -1,
                extension2: -1,
                extension3: -1,
                extension4: -1,
                facilities: 250,
                image_name: "boomerang.jpg")

  Hotel.create!(name:     "L'Etoile",
                land: 3000,
                entrance: 250,
                main_building: 3300,
                extension1: 2200,
                extension2: 1800,
                extension3: 1800,
                extension4: 1800,
                facilities: 4000,
                image_name: "letoile.jpg")

  Hotel.create!(name: "President",
                land: 5000, 
                entrance: 400,
                main_building: 5000,
                extension1: 2500,
                extension2: 2500,
                extension3: 2500,
                extension4: -1,
                facilities: 5000,
                image_name: "president.jpg")

  Hotel.create!(name:     "Fujiyama",
                land: 1000,
                entrance: 100,
                main_building: 2200,
                extension1: 1400,
                extension2: 1400,
                extension3: -1,
                extension4: -1,
                facilities: 500,
                image_name: "fujiyama.jpg")

  Hotel.create!(name:     "Royal",
                land: 2500,
                entrance: 200,
                main_building: 3600,
                extension1: 2600,
                extension2: 1800,
                extension3: 1800,
                extension4: -1,
                facilities: 3000,
                image_name: "royal.jpg")

  Hotel.create!(name:     "Waikiki",
                land: 2500,
                entrance: 200,
                main_building: 3500,
                extension1: 2500,
                extension2: 2500,
                extension3: 1750,
                extension4: 1750,
                facilities: 2500,
                image_name: "waikiki.jpg")

  Hotel.create!(name:     "Taj Mahal",
                land: 1500,
                entrance: 100,
                main_building: 2400,
                extension1: 1000,
                extension2: 500,
                extension3: -1,
                extension4: -1,
                facilities: 1000,
                image_name: "tajmahal.jpg")

  Hotel.create!(name:     "Safari",
                land: 2000,
                entrance: 150,
                main_building: 2600,
                extension1: 1200,
                extension2: 1200,
                extension3: -1,
                extension4: -1,
                facilities: 2000,
                image_name: "safari.jpg")
end

def make_players
  Player.create(name: "player1",
                square: 0)
  Player.create(name: "player2",
                square: 0)
  Player.create(name: "player3",
                square: 0)
  Player.create(name: "player4",
                square: 0)
end