# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
Criteria.destroy_all
Choice.destroy_all

puts "- Event Drink..."

Event.create(
  name: "Event Drink",
  normal_description: "This is a Drink Event",
  address: "Britannia, Part-Dieu",
  event_type: "drink",
  wild: 2,
  explained_description: "This is a Drink Event in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts "- Event Dance..."

Event.create(
  name: "Event Dance",
  normal_description: "This is a Dance Event",
  address: "Britannia, Part-Dieu",
  event_type: "dance",
  wild: 2,
  explained_description: "This is a Dance Event in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts "- Event Culture..."

Event.create(
  name: "Event Culture",
  normal_description: "This is a Culture Event",
  address: "Britannia, Part-Dieu",
  event_type: "culture",
  wild: 2,
  explained_description: "This is a Culture Event in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts " ======================="
puts " = Megan for ever <3 ! ="
puts " ======================="


