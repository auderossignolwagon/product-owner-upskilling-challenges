puts "What is your name?"
name = gets.chomp # asks user to type something in the Terminal

puts "Ok got it!"

puts "What is your year of birth ?"
birth_year = gets.chomp # asks user to type something in the Terminal
puts "Ok got it!"

age = 2019 - birth_year.to_i

puts "You are #{age} years old"
