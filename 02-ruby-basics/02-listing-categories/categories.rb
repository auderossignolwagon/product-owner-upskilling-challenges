categories = ["Adventure","Sport","Visits","Workshops","Cultural","Food"]
  # TODO: gather the categories of activity
puts "Please, ddd an extra category..."
category = gets.chomp # asks user to type something in the Terminal

categories << category

categories = categories.sort

categories.each do |name|
  puts "#{name}"
end

puts categories.size

# TODO: your code goes here
#1. Create an `Array` of categories containing at least:
#Adventure, Sport, Visits, Workshops, Cultural, Food (in this **specific order**)
#2. Ask the user of your program to enter an extra category
#3. Display the list of the categories sorted alphabetically
#4. Display the total number of categories