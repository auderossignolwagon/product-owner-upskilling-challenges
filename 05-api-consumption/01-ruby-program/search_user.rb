require "json"
require "rest-client"

puts "What is the name of the user you're looking for? (e.g. Bob Dylan)"
name = gets.chomp # asks user to type something in the Terminal

puts "Ok got it! Let's search for that person..."

namefirstname = name.split()

url = "https://wagon.ilucca-demo.net/api/v3/users"

response = RestClient.get(url, "params" => {"fields"=>"firstName,lastName,department,picture","firstname"=>namefirstname[0],"lastName"=>namefirstname[1]}, "Authorization" => "Lucca application=18afcfb8-697b-4742-b726-418269485cee")
personne = JSON.parse(response.body)

p "------------"
p personne["data"]["items"][0]["firstName"]
p personne["data"]["items"][0]["lastName"]
p personne["data"]["items"][0]["department"]["name"]
p personne["data"]["items"][0]["picture"]["url"]
p "------------"

