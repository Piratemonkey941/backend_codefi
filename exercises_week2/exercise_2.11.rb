class Animal
    attr_accessor :name, :animal_type, :color

    # initializing the instance variables
    def initialize(name, animal_type, color)
        @name = name
        @animal_type = animal_type
        @color = color
    end

    # method/function to print the introduction
    def intro
        puts "Hey my name is #{@name}. "
        puts "I'm a  #{@animal_type}. "
        puts "My fur color is #{@color}. "
    end
end



# creating new instance of animal
dog = Animal.new("Clifford", "dog", "red")
dog.name = "Clifford"
dog.animal_type = "dog"
dog.color = "red"

# accessing the attributes of animal individually to test
# puts dog.name 
# puts dog.animal_type 
# puts dog.color 

# calling the intro method
dog.intro

