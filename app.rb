require 'sinatra'
require 'sinatra/json'
require 'json'

configure do
  set :public_folder, 'public'
end

DISHES = [
  "Roasted Brussels Sprouts",
  "Fresh Brussels Sprouts Soup",
  "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon",
  "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries",
  "Hot Cheesy Roasted Brussels Sprout Dip",
  "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro",
  "Roasted Brussels Sprout and Red Potato Salad",
  "Smoky Buttered Brussels Sprouts",
  "Sweet and Spicy Roasted Brussels Sprouts",
  "Smoky Buttered Brussels Sprouts",
  "Brussels Sprouts and Egg Salad with Hazelnuts"
]

# get '/dishes/random.json' do
#   content_type :json
#   @dish = dishes.sample.to_json
# end
#
# get '/' do
#   @dish = dishes.sample.to_json
#   erb :index
# end

get "/" do
  @dish = random_dish
  erb :index
end

def random_dish
  # The .sample method returns a random element from an array
  DISHES.sample
end

get "/.json" do
  content_type :json

  { dish: random_dish }.to_json
end
