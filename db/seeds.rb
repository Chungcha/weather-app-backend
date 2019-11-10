# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Favorite.destroy_all

user1 = User.create("username": "heej")
user2 = User.create("username": "charlie")

favorite1 = Favorite.create("user_id": user1.id, "location_id": "seoul1")
favorite2 = Favorite.create("user_id": user2.id, "location_id": "detroint1")