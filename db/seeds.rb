# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.delete_all

Player.create!  id: 1, first_name: "Tiger", last_name: "Woods", reason: "Ryder Cup"
Player.create!  id: 2, first_name: "Rory", last_name: "McILroy", reason: "Ryder Cup"
