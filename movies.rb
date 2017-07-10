movies = {
    :"john wick" => 5,
}

puts "What do you want to do?"
puts "Type 'add', 'update', 'display', or 'delete'"
choice = gets.chomp

case choice
when "add"
    puts "What movie do you want to add?"
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
        puts "What is the rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} was added with a rating of #{rating}"
    else
        puts "Movie already exists!"
    end
when "update"
    puts "What is the title?"
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
        puts "Movie isn't in the database!"
    else
        puts "What is the new rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} was updated with a rating of #{rating}!"
    end
when "display"
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
when "delete"
    puts "Which title do you want to delete?"
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
        puts "That movie is not in the database!"
    else
        movies.delete(title)
        puts "Movie deleted!"
    end
else
    puts "Error!"
end