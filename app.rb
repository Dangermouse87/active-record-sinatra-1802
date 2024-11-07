require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# The url below allows you to see the web app running
# http://localhost:4567/ (root)

# We run the app like we usually do using:
# ruby app.rb

# get configures the action for the url.
# "/" == "localhost:4567/"
get "/" do
  # We get all of the pokemon using AR
  @pokemon = Pokemon.all
  # We designate the view which we want to use: erb :index == index.erb
  erb :index
end

# configures a page for a url that has /:id (i.e /1 or /2)
get "/:id" do
  # We find the pokemon based on whatever is passed in the params (whatever is after the "/")
  # For instance, "/56" in the url would mean the param is 56. We then search for Pokemon with the id 56
  @pokemon = Pokemon.find(params[:id])
  # We designate the view we wish to use.
  erb :show
end

# For extra info on params
# Think of a website where you use the search bar, or has multiple products.
# Similar to this airbnb link here
# https://www.airbnb.com/rooms/27787634?adults=1&children=0&infants=0&search_mode=regular_search&check_in=2024-11-30&check_out=2024-12-05&source_impression_id=p3_1730987066_P3rsbbYpDGa1lEIh
# after rooms there is 27787634, which is most likely the listings id number.
# You also have other params, which as usually querys after the ?
# adults = 1, children = 0 etc etc.