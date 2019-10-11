require "json"
require "rest-client"

puts "What is the role of the users you're looking for? (e.g. Figgo - Manager)"
role = gets.chomp # asks user to type something in the Terminal

puts "Ok got it! Let's search for the users..."

role_url = "https://wagon.ilucca-demo.net/api/v3/roles"
role_response = RestClient.get(role_url, 
"params" => { "fields"=>"id", "name"=>role }, 
"Authorization" => "Lucca application=18afcfb8-697b-4742-b726-418269485cee")

roleaafficher = JSON.parse(role_response.body)

p roleaafficher["data"]["items"][0]["id"]
role_id = roleaafficher["data"]["items"][0]["id"]

users_url = "https://wagon.ilucca-demo.net/api/v3/users"
user_response = RestClient.get(users_url, 
"params" => { "fields"=>"lastName, firstName", "rolePrincipal.id"=>role_id }, 
"Authorization" => "Lucca application=18afcfb8-697b-4742-b726-418269485cee")
data = JSON.parse(user_response.body)
p "_____________"

usersaafficher = data["data"]["items"]

usersaafficher.each do |user|
    puts user["firstName"]
    puts user["lastName"]
    puts "---"
  end

