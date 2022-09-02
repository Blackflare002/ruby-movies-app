movies = {
    Stealth: 4,
    Terminator: 5,
    Alien: 5,
    Totoro: 4,
  }
  puts "What would you like to do?"
  choice = gets.chomp
  case choice
    when "add"
      puts "What's the movie's title?"
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
      puts "What's the movie's title?"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "You've never added this movie!"
      else
        puts "What's the movie's new rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
      end
    when "display"
      movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
      end
    when "delete"
      puts "What's the movie's title?"
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "You've never added this movie!"
      else
        movies.delete(title.to_sym)
      end
    else
      puts "Error!"
  end