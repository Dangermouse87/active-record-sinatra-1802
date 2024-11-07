require 'open-uri'
require 'json'

url = "https://pokeapi.co/api/v2/pokemon-form/7"
# ***** We go into the poke data, and look for the ["name"] key
# name: poke_data["name"], 
# ***** We go into the poke data, into the sprites hash inside the json hash {{hash inside a hash }}, and then select the ['front_default'] key for the image
# image_url: poke_data["sprites"]["front_default"],
# ***** If you have a look, types returns an array of hashes, so we select the types, go into the first array element, and then select the type hash inside the array, followed by the name 
# poke_type: poke_data["types"][0]["type"]["name"]


# We destroy all database entries to clean the database when reseeding, incase their have been changes to the scheme
puts "Destroying pokemons..."
Pokemon.destroy_all
puts "Pokemons destroyed"

151.times do
  # get the url to parse
  url = "https://pokeapi.co/api/v2/pokemon-form/#{rand(1..200)}"
  # parse the url
  response = URI.parse(url).read
  # JSON.parse to make the data readable by ruby
  poke_data = JSON.parse(response)

  # create new instances using the retreived data
  Pokemon.create(
    name: poke_data["name"],
    image_url: poke_data["sprites"]["front_default"],
    poke_type: poke_data["types"][0]["type"]["name"]
  )
  puts "Created #{poke_data["name"]}"
end