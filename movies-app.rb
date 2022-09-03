movies = {
  Stealth: 4,
  Terminator: 5,
  Alien: 5,
  Totoro: 4,
  Howls_Moving_Castle: 5,
  Star_Wars_A_New_Hope: 5,
  Lucy: 0,
  Predators: 1,
  The_Birds: 4,
  Rear_Window: 5,
  The_Others: 5
}

puts "What would you like to do? Say 'add', 'update', 'display' or 'delete'."
choice = gets.chomp

case choice
when "add"
  puts "What's the movie's title? No spaces or special characters, please."
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "How would you rate that movie on a scale of 0 to 5?"
    rating = gets.chomp.to_i
    movies[title.to_sym] = rating.to_i
    puts "Movie added!"
  else
    puts "Movie has already been added!"
  end
when "update"
  puts "What's the movie's title? No spaces or special characters, please."
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "You've never added this movie!"
  else
    puts "What's the movie's new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
  puts "What's the movie's title? No spaces or special characters, please."
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "You've never added this movie!"
  else
    movies.delete(title.to_sym)
    puts "Movie deleted!"
  end
else
  puts "Error! Please try again."
end
