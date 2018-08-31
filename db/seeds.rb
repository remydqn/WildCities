# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying choice"
Choice.destroy_all
puts "destroying event"
Event.destroy_all
puts "destroying criteria"
Criteria.destroy_all
puts "destroying users"
User.destroy_all


puts 'mes users'
remy = User.create!(
 email: "remydqn@gmail.com",
 password: "azerty"
)

benjamin = User.create!(
 email: "megane@gmail.com",
 password: "azerty"
)

megan = User.create!(
 email: "benjolivot@gmail.com",
 password: "azerty"
)

thomas = User.create!(
 email: "thomas@gmail.com",
 password: "azerty"
)

puts User.all





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

Event.create(
  name: "Event Drink 2",
  normal_description: "This is a Drink Event 2",
  address: "marseille",
  event_type: "drink",
  wild: 2,
  explained_description: "This is a Drink Event 2 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Drink 3",
  normal_description: "This is a Drink Event 3",
  address: "Britannia, Part-Dieu",
  event_type: "drink",
  wild: 3,
  explained_description: "This is a Drink Event 3 in Part-Dieu !",
  tips: "Stage 3, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts "- Events Dance..."

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

Event.create(
  name: "Event Dance 2",
  normal_description: "This is a Dance Event 2",
  address: "Britannia, Part-Dieu",
  event_type: "dance",
  wild: 1,
  explained_description: "This is a Dance Event 2 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Dance 3",
  normal_description: "This is a Dance Event 3",
  address: "Britannia, Part-Dieu",
  event_type: "dance",
  wild: 2,
  explained_description: "This is a Dance Event 3 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Dance 4",
  normal_description: "This is a Dance Event 4",
  address: "Britannia, Part-Dieu",
  event_type: "dance",
  wild: 2,
  explained_description: "This is a Dance Event 4 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Dance 5",
  normal_description: "This is a Dance Event 5",
  address: "Britannia, Part-Dieu",
  event_type: "dance",
  wild: 2,
  explained_description: "This is a Dance Event 5 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts "- Events Culture..."

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

Event.create(
  name: "Event Culture 2",
  normal_description: "This is a Culture Event 2",
  address: "Britannia, Part-Dieu",
  event_type: "culture",
  wild: 2,
  explained_description: "This is a Culture Event 2 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Culture 3",
  normal_description: "This is a Culture Event 3",
  address: "Britannia, Part-Dieu",
  event_type: "culture",
  wild: 2,
  explained_description: "This is a Culture Event 3 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Culture 4",
  normal_description: "This is a Culture Event 4",
  address: "Britannia, Part-Dieu",
  event_type: "culture",
  wild: 2,
  explained_description: "This is a Culture Event 4 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

Event.create(
  name: "Event Culture 5",
  normal_description: "This is a Culture Event 5",
  address: "Britannia, Part-Dieu",
  event_type: "culture",
  wild: 2,
  explained_description: "This is a Culture Event 5 in Part-Dieu !",
  tips: "Stage 2, Bloc B",
  pending: true,
  city: "Lyon",
  secret_event: false
)

puts "
_░▒███████
░██▓▒░░▒▓██
██▓▒░__░▒▓██___██████
██▓▒░____░▓███▓__░▒▓██
██▓▒░___░▓██▓_____░▒▓██
██▓▒░________MEGAN__░▒▓██
_██▓▒░______________░▒▓██
__██▓▒░_FOR_EVER__░▒▓██
___██▓▒░__________░▒▓██
____██▓▒░___<3___░▒▓██
_____██▓▒░_____░▒▓██
______██▓▒░__░▒▓██
_______█▓▒░░▒▓██
_________░▒▓██
_______░▒▓██
_____░▒▓██

"

