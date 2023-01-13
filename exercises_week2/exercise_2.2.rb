
def favorite_movie(movie)
    puts "My favorite movie is #{movie}!"
    # using string interpolation to print "My favorite movie is " and include the movie parameter.
end

def favorite_food(food)
    puts "My favorite food is #{food}!"
    # using string interpolation to print "My favorite food is " and include the food parameter.
end

def favorite_drink(drink)
    puts "My favorite drink is #{drink}!"    
    # using string interpolation to print "My favorite drink is " and include the drink parameter.
end

def list_of_favorite_things(movie, food, drink)

    # Call favorite_movie, pass in the parameter movie as an argument
    favorite_movie(movie)

    # Call favorite_food, pass in the parameter food as an argument
    favorite_food(food)

    # Call favorite_drink, pass in the parameter drink as an argument
    favorite_drink(drink)

end

puts list_of_favorite_things("Dune", "pizza", "root beer")
# Call list_of_favorite_things, include three arguments