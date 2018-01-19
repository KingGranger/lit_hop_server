# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


main_user = User.create({username: 'The Boy Granger', password: 'secret', age: 23})

# GOOGLE_PLACES_API = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=40.7128,-74.0060&radius=500&type=bar&key=AIzaSyCQh-ANCsLGqwp1ETq1eSj55pUo0Rd48dg"
#
# response = RestClient.get(GOOGLE_PLACES_API)
# bars_json = JSON.parse(response)
#
# byebug
first_journey = Journey.create({user: main_user, start_location: 'my house', end_location: "my bitches's house"})

only_bar = Bar.create({name: 'my house'})

Trip.create({bar: only_bar, journey: first_journey})
