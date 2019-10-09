require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?

enable :static

get "/" do
  @activities = [
  {"Name"=>"Trampoline",
  "Category"=>"Sport",
  "City"=>"Nantes",
  "Duration"=>60,
  "Number of participants"=>10,
  "Price"=>120},
  {"Name"=>"Flechette",
  "Category"=>"Agilité",
  "City"=>"Nantes",
  "Duration"=>50,
  "Number of participants"=>10,
  "Price"=>100},
  {"Name"=>"Degustation de vins",
  "Category"=>"Détente",
  "City"=>"Clisson",
  "Duration"=>120,
  "Number of participants"=>10,
  "Price"=>220}
  ]
  erb :index
end
