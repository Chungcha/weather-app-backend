# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new("username": "heej", "password": "flatiron1")
user2 = User.new("username": "charlie", "password": "password")

favorite1 = Favorite.new("user_id": user1.id, "location_id": "seoul1")
favorite2 = Favorite.new("user_id": user2.id, "location_id": "detroint1")