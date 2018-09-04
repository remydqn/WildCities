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
  name: "Hot Stuff, Terminus Club",
  normal_description: "Antinote's boss Zaltan and Sentiments—one of the most interesting French producers right now—join forces to finish the week with good vibes, in a backroom of an Italian restaurant! ",
  address: "3 rue Terme, 69001 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "You want to dance all night ? Give the Password to the boss !",
  tips: "Backroom, Password : ZALTAN2018",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)

Event.create(
  name: "Secret Poker night on a rooftop !",
  normal_description: "Come and play poker with people during a night on a rooftop renting by bar servers ! Openbar and music all night.",
  address: "27 rue du Commandant Lamperière, 69007 Lyon",
  event_type: "drink",
  wild: 6,
  explained_description: "Starting bet : 20 euros !",
  tips: "On the roof, take the fire escape at the back of the building !",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)

Event.create(
  name: "Disused shed, transe music and people from everywhere² !",
  normal_description: "",
  address: "148 avenue Berthelot, 69007 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "Discover the most secret (and illegal) spot to listen transe music all night. You can pay the entry price with what you want !",
  tips: "Be ready to run if cops show up !",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)

Event.create(
  name: "La Favela Chic",
  normal_description: "Reach a secret room via the back of the theater, on the other side of the red curtain.",
  address: "57 avenue Léon Blum, 69100 Villeurbanne",
  event_type: "drink",
  wild: 6,
  explained_description: "This place combined at the same time a dancefloor with pleasant and Brazilian musics and a bar with a beautiful New York decoration !",
  tips: "Come on in by the back entrance.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)

Event.create(
  name: "Lets dance in a garage !",
  normal_description: "This is not only a garage.. after 20h, when the doors are closed, the night begin! Music, cocktails.. in the secret place in the huge room at the bottom of the garage.",
  address: "12-14 rue Louis blanc, 69006 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "If you go outside of the garage, you can't come back inside!",
  tips: "You have to know the boss' name : Richard",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)

Event.create(
  name: "La Daronne",
  normal_description: "This place is unique! You have to get your pass, it's 2 euros. After that, you will drink and dance all night In an associative bar where each people can expose his artistic talent, whatever it is!",
  address: "23 quai Jean-Moulin, 69001 Lyon",
  event_type: "drink",
  wild: 6,
  explained_description: "Be ready to show your artistic talent too!",
  tips: "Don't forget your pass! And always say Hello to Chrstina, the boss.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)


Event.create(
  name: "Under the Bridge",
  normal_description: "Improvised and short-lived evening under the bridge in front of the Cité Internationale. Campfire, music, urbex, beers and freedom all night long.",
  address: "Promenade du bas Rhône, 69006 Lyon",
  event_type: "drink",
  wild: 6,
  explained_description: "Cool and wild, in the nature, near the river.. !",
  tips: "Do not come unfortified.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)


puts "- Events Dance..."

Event.create(
  name: "La Taverne de l'Ours qui boit",
  normal_description: "The perfect place to combine The discovery of still unknown artists and a huge dancefloor with Indie/Pop music.",
  address: "15 rue Magenta, 69006 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "Open your mind, move your body, drink again and again and bet your money on paintings.",
  tips: "Look for the Red Door and knock 3 times.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)



Event.create(
  name: "The EGRAB",
  normal_description: "You've heard about the barges in Lyon ? We will take you on an outstanding barge, a different barge. ",
  address: "Place de Montréal, 69002 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: " This barge is crazy. I can't tell you more, you have to see this by your own!",
  tips: "Cross the little park to find the barge, by the river.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)



Event.create(
  name: "Melange",
  normal_description: "This is the place where people come from everywhere, every social class. ",
  address: "1 rue Auguste Payant, 69008 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "No shame, no judgement, no insistent look, just come as you are!",
  tips: "Prepare yourself to take off one of your clothes at the entrance.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)



Event.create(
  name: "LAVOMATIC",
  normal_description: "A funtionnal lavomatic hiding a secret bar.",
  address: "56 rue Domer, 69007 Lyon",
  event_type: "dance",
  wild: 6,
  explained_description: "Behind washing machines - You just got to press on the button concealed to open a hidden door - hides a staircase which leads directly towards a kind of small apartment, with smoking room. A cosy place where we drink cocktail.",
  tips: "Press the red button behing the 5th whashing machine.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music"
)



Event.create(
  name: "Le Syndicat",
  normal_description: "A high-end cocktail establishment in a poor neighborhood. Come and enjoy atypical and varied cocktails in a bar with an underground spirit specialized in French alcohol.",
  address: "",
  event_type: "drink",
  wild: 6,
  explained_description: "The most doubtful bar in Lyon! Don't be afraid to come inside.. even if the outside is weird.",
  tips: "45 rue Parmentier, 69200 Vénissieux",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)


Event.create(
  name: "Behind the Hotel, come, dance and speak spanish! ",
  normal_description: "Underground bar where we rediscover the Argentine culture. La Mezcaleria is a very secret place, hidden behind the kitchens of the hotel.",
  address: "4 rue André Bollier, 69008 Lyon",
  event_type: "drink",
  wild: 6,
  explained_description: "Maximum two people accepted.",
  tips: "You have to know how to say 'Your bar is the most special bar in this city' in spanish.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar"
)

#------------

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

