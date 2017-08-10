# Random Menu Generator
# produces random Menu
# with user-selected number of items

# produces 3 arrays with food descriptors
adjectives = ["spicy", "tangy", "sweet", "seasonal", "crunchy", "sour", "soft", "creamy", "brittle", "cold"]
cooking_style = ["sauteed", "fried", "frozen", "seared", "pan-fried", "well-done", "baked", "stir-fried", "steamed", "curried" ]
food = ["cake", "tacos", "pizza", "ice cream", "clams", "tater tots", "chicken tenders", "tuna", "steak", "tofu"]

# asks user for number of menu items (10 or fewer)
puts "How many items would you like on your menu? Please choose a value less than or equal to 10."
items = gets.to_i

# confirms whether user input is valid
while items <= 0 || items > 10
  puts "Please provide a number less than 10 and greater than 0"
  items = gets.to_i
end

# creates list of non-repeating numbered menu items
puts "Great! Here is your Menu:"
adjectives = adjectives.shuffle
cooking_style = cooking_style.shuffle
food = food.shuffle
items.times do |n|
  puts "#{n+1}. #{adjectives[n]} #{cooking_style[n]} #{food[n]}"
end
