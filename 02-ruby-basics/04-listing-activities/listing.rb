activities = [
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
  # TODO: gather at least 3 activities
]

activities.each do |activity|
  puts "#{activity["Name"]} #{activity["Category"].upcase}"
  puts "Located in #{activity["City"]}"
  puts "Duration of #{activity["Duration"]} minutes"
  puts "For #{activity["Number of participants"]} personnes"
  puts "Charge of #{activity["Price"]} €"
  puts "---"
end

# TODO: your code goes here
