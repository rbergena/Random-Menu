# Random Menu Generator
# produces random Menu
# with user-selected number of items

# Introduces Menu Generator
puts "Welcome to the Random Menu Generator"
puts "How many items would you like on your menu? (please choose a number less than 10 and greater than 0)"
items = gets.to_i

# confirms whether user input is valid
while items <= 0 || items > 10
  puts "Please provide a number less than 10 and greater than 0"
  items = gets.to_i
end

# instantiate empty arrays
adjectives, cooking_style, food = [], [], []

# produces items arrays based on user input
items.times do |n|
  puts "Please provide an adjective to describe food"
  adjectives[n] = gets.chomp
  puts "Please provide a cooking style to describe food"
  cooking_style[n] = gets.chomp
  puts "Please provide a food"
  food[n] = gets.chomp
end

# creates list of non-repeating numbered menu items
puts "Great! Here is your Menu:"
adjectives = adjectives.shuffle
cooking_style = cooking_style.shuffle
food = food.shuffle
items.times do |n|
  puts "#{n+1}. #{adjectives[n]} #{cooking_style[n]} #{food[n]}"
end
