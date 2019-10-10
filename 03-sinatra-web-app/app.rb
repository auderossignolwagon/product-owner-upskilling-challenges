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
  "Price"=>120,
  "Photo_url"=>"http://bloximages.newyork1.vip.townnews.com/oanow.com/content/tncms/assets/v3/editorial/f/19/f19ceb64-ce42-11e6-9d5f-53ad85a4b799/5865da342dbdb.image.jpg"
  },
  
  {"Name"=>"Flechette",
  "Category"=>"Agilité",
  "City"=>"Nantes",
  "Duration"=>50,
  "Number of participants"=>10,
  "Price"=>100,
  "Photo_url"=>"https://images.fr.shopping.rakuten.com/photo/Jeu-Flechette-Adulte-1204458965_L.jpg"
  },
  
  {"Name"=>"Degustation de vins",
  "Category"=>"Détente",
  "City"=>"Clisson",
  "Duration"=>120,
  "Number of participants"=>10,
  "Price"=>220,
  "Photo_url"=>"https://www.wineintelligence.com/wp-content/uploads/2014/06/24.06.2014_Pod2.jpg"
  }
  ]
  erb :index
end
