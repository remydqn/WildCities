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


dance_hot_stuff = Event.create(
  name: "Hot Stuff, Terminus Club",
  normal_description: "An exotic and eclectic décor forms a kind of urban cabinet of curiosities in the backroom of the restaurant, where the most interesting French dj join forces to finish the week with good vibes! ",
  address: "3 rue Terme, 69001 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "You want to dance all night ? Give the Password to the boss to go inside!",
  tips: "Backroom Password : EPIKUR",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

dance_hot_stuff.remote_picture_url = "https://images.pexels.com/photos/341858/pexels-photo-341858.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
dance_hot_stuff.save



secret_poker = Event.create(
  name: "Secret Poker night on a rooftop !",
  normal_description: "Come and play poker with people during a night on a rooftop renting by players ! Open-bar and music all night.",
  address: "27 rue du Commandant Lamperière, 69007 Lyon",
  event_type: "drink",
  wild: 4,
  explained_description: "Starting bet : 20 euros !",
  tips: "Take the fire escape at the back of the building !",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

secret_poker.remote_picture_url = "https://images.pexels.com/photos/262333/pexels-photo-262333.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
secret_poker.save

abandoned_hangar = Event.create(
  name: "Abandoned hangar, transmusic and people from everywhere ! Discover the most secret (and illegal) spot to listen music all night. ",
  normal_description: "",
  address: "148 avenue Berthelot, 69007 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "You can pay the entrance price with what you want !",
  tips: "Be ready to run if cops show up !",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

abandoned_hangar.remote_picture_url = "https://images.pexels.com/photos/164319/pexels-photo-164319.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
abandoned_hangar.save

favela_chic = Event.create(
  name: "La Favela Chic",
  normal_description: "Reach a secret room via the back of the theater, on the other side of the stage curtain.",
  address: "57 avenue Léon Blum, 69100 Villeurbanne",
  event_type: "drink",
  wild: 4,
  explained_description: "This place combined a dancefloor with pleasant and Brazilian musics and a bar with a beautiful New York decoration !",
  tips: "Come on in by the back entrance.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

favela_chic.remote_picture_url = "https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
favela_chic.save

garage_dance = Event.create(
  name: "Lets dance in a garage !",
  normal_description: "This is not only a garage.. after 8 PM, when the doors are closed, the party begin! Music, cocktails.. in the huge and secret room at the bottom of the garage.",
  address: "12-14 rue Louis blanc, 69006 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "If you go outside of the garage, you can't go back inside!",
  tips: "You have to know the boss' name : Richard",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

garage_dance.remote_picture_url = "https://images.pexels.com/photos/745054/pexels-photo-745054.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
garage_dance.save


la_daronne = Event.create(
  name: "La Daronne",
  normal_description: "This place is unique! You have to get your pass, it's 2 euros. After that, you will drink and dance all night In an associative bar where each one can expose its artistic talent, whatever it is!",
  address: "23 quai Jean-Moulin, 69001 Lyon",
  event_type: "drink",
  wild: 4,
  explained_description: "Be ready to show your artistic talent too!",
  tips: "Don't forget your pass! And always say Hello to Christina, the boss.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

la_daronne.remote_picture_url = "https://images.pexels.com/photos/1185434/pexels-photo-1185434.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
la_daronne.save

under_the_bridge = Event.create(
  name: "Under the Bridge",
  normal_description: "Improvised and short-lived evening under the bridge in front of the Cité Internationale. Campfire, music, urbex, beers and freedom all night long.",
  address: "Promenade du bas Rhône, 69006 Lyon",
  event_type: "drink",
  wild: 4,
  explained_description: "Cool and wild event, into the nature, near the river.. !",
  tips: "Do not come unfortified.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

under_the_bridge.remote_picture_url = "https://images.pexels.com/photos/954616/pexels-photo-954616.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
under_the_bridge.save



taverne_ours = Event.create(
  name: "La Taverne de l'Ours qui boit",
  normal_description: "The perfect place to combine The discovery of still unknown painter/tagger and a huge dancefloor with Indie/Pop music. Open your mind, move your body, drink again and again. ",
  address: "15 rue Magenta, 69006 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "You can bet money on paintings.",
  tips: "Look for the Red Door and knock 3 times.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

taverne_ours.remote_picture_url = "https://images.pexels.com/photos/709604/pexels-photo-709604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
taverne_ours.save

the_egrab = Event.create(
  name: "The EGRAB",
  normal_description: "You've heard about the barges in Lyon ? We will take you on an outstanding barge, a different barge. ",
  address: "Place de Montréal, 69002 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: " This barge is crazy. I can't tell you more, you have to see this by your own!",
  tips: "Cross the little park to find the barge, by the river.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

the_egrab.remote_picture_url = "https://images.pexels.com/photos/801863/pexels-photo-801863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
the_egrab.save


blending = Event.create(
  name: "Blending",
  normal_description: "This is the place where people come from everywhere, every social class, disguised or not. ",
  address: "1 rue Auguste Payant, 69008 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "No shame, no judgement, no insistent look, just come as you are!",
  tips: "Prepare yourself to take off one of your clothes at the entrance.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

blending.remote_picture_url = "https://images.pexels.com/photos/1230397/pexels-photo-1230397.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
blending.save


lavomatic = Event.create(
  name: "LAVOMATIC",
  normal_description: "A funtionnal lavomatic hiding a secret bar.",
  address: "56 rue Domer, 69007 Lyon",
  event_type: "dance",
  wild: 4,
  explained_description: "Behind washing machines - You just got to press on the button concealed to open a hidden door - hides a staircase which leads directly towards a kind of small apartment, with smoking room. A cosy place where we drink cocktail.",
  tips: "Press the red button behing the 5th whashing machine.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "music",
)

lavomatic.remote_picture_url = "https://images.pexels.com/photos/4414/black-and-white-clean-housework-launderette.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
lavomatic.save


le_syndicat = Event.create(
  name: "Le Syndicat",
  normal_description: "A high-end cocktail establishment in a poor neighborhood and The most suspicious bar in Lyon! Come and enjoy atypical and varied cocktails in a bar with an underground spirit specialized in French alcohol.",
  address: "22 rue Cuvier, 69006 Lyon",
  event_type: "drink",
  wild: 4,
  explained_description: "Don't be afraid to come inside.. even if the outside is weird.",
  tips: "Take your CGT card",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

le_syndicat.remote_picture_url = "https://images.pexels.com/photos/4295/black-and-white-alcohol-bar-drinks.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
le_syndicat.save


behind_the_hotel = Event.create(
  name: "Behind the Hotel, come, dance and speak spanish! ",
  normal_description: "Underground bar where we rediscover the Argentine culture. La Mezcaleria is a very secret place, hidden behind the kitchens of the hotel.",
  address: "4 rue André Bollier, 69008 Lyon",
  event_type: "drink",
  wild: 4,
  explained_description: "Groups of maximum 3 people can come.",
  tips: "You have to know how to say 'Your bar is the coolest bar in this city' in spanish.",
  pending: true,
  city: "Lyon",
  secret_event: false,
  icon: "bar",
)

behind_the_hotel.remote_picture_url = "https://images.pexels.com/photos/605408/pexels-photo-605408.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
behind_the_hotel.save

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

