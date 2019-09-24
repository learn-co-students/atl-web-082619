# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snack.destroy_all
Retailer.destroy_all

girl_scouts = Retailer.create(name: "Girl Scouts", year_established: 1888)
hostess = Retailer.create(name: "Hostess", year_established: 1902)

Snack.find_or_create_by(name: "Trefoils", calories: 500, deliciousness: 3,
    retailer: girl_scouts)
Snack.find_or_create_by(name: "Tagalongs", calories: 600, deliciousness: 6,
    retailer: girl_scouts)
Snack.find_or_create_by(name: "Twinkies", calories: 750, deliciousness: 8,
    retailer_id: hostess.id)
Snack.find_or_create_by(name: "RingDings", calories: 500, deliciousness: 1,
    retailer_id: hostess.id)
