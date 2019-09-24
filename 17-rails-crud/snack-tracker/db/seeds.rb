# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snack.find_or_create_by(name: "Nachos", calories: 500, deliciousness: 3)
Snack.find_or_create_by(name: "Chicken Fingers", calories: 600, deliciousness: 6)
Snack.find_or_create_by(name: "Mozzarella Sticks", calories: 750, deliciousness: 8)
Snack.find_or_create_by(name: "Tacos", calories: 500, deliciousness: 1)
