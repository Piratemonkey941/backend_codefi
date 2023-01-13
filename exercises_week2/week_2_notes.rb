
#                                                               ----------------------BASIC RUBY METHODS----------------------
# ----------------------Methods----------------------

# ----------------------Creating Methods----------------------
def name
    "Nolan"
end

puts name


# ----------------------Naming Conventions----------------------
# Use snake case, cant use numbers at begining


def area_of_rectangle   # valid
end
def area_1_of_rectangle # valid
end
def 1_area_of_rectangle # bad
end

_name                   # valid
method?_name            # invalid
method_name!            # valid
begin                   # invalid
begin_count             # valid

# ----------------------Parameters and Arguments----------------------

def area_of_rectangle(width, height) #standard
    width * height
end

puts area_of_rectangle(4, 3)

def area_of_rectangle(width = 4, height = 3) # default values 
    width * height  #could return here but implicet 
end

puts area_of_rectangle(6, 5) # new arguments will trump default

#Ruby has implicet return 

def prefered_pet(pet)
    if pet == "dog"
        "you should get a dog"
    elsif pet == "cat"
        "you should get a dog"
    else 
        'Never heard of it'
    end
end

puts prefered_pet('potatoe')


# ----------------------Build in Methods ----------------------
# ---------------------- Predicate Methods ----------------------

puts 4.odd? #predicate method, is this odd? FALSE 
puts 3.odd? #predicate method, is this odd? True

puts 15.between?(10, 20) #predicate method, is this between? True
puts 15.between?(20, 30) #predicate method, is this between? False

# ---------------------- Bang Methods ----------------------

string = "HELLO HOW ARE YOU?"

puts string.downcase    #hello how are you?
puts string             #HELLO HOW ARE YOU?

puts string.downcase!    #hello how are you? preforms on variable
puts string             #hello how are you?

# ----------------------RESERVED WORDS ----------------------

# class
# module
# def
# end
# nil
# true
# false
# self
# if
# else
# elsif
# unless
# while
# until
# for
# in
# do
# break
# next
# redo
# retry
# return
# yield
# super
# self
# __FILE__
# __LINE__

                                                    # ----------------------ENUMERABLE METHODS----------------------
attendees = ["donald","stacy","sara","lee", "nolan","jacob"]
# ---------------------- Each Method ----------------------
# Iterates over the elements of a collection, executing a block of code for each element.


attendees.each {|attendee| puts "Hello, " + attendee}

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
    puts n
end

#With Index Methor
attendees.each_with_index do |attendee, index|
    puts "Team: 1 " + attendee if index.odd?
    puts "Team: 2 " + attendee if index.even?
end

# ---------------------- Map Method----------------------
Transforms the elements of a collection by applying a block of code to each element and
 returning a new array with the transformed elements.

puts attendees.map { |attendee| attendee.upcase }
puts attendees

# ---------------------- Select Method ----------------------
# Filters the elements of a collection by applying a block of code to each 
# element and returning a new array with only the elements that evaluate to 
# true when the block is called.

puts attendees.select { |attendee| attendee != "lee"} #removed lee from array and provides new array
puts attendees.select { |attendee| attendee == "lee"} #adds? lee from array and provides new array

numbers = [1, 2, 3, 4, 5, 6]
p even_numbers = numbers.select { |n| n.even? }
# even_numbers is now [2, 4, 6]

p even_numbers2 = numbers.select do |n|
    n.even?
end

# ---------------------- Find Method ----------------------
# Returns the first element in a collection that evaluates to true when a block of code is applied to it.

numbers = [1, 3, 5, 7, 8, 9, 11]
p even_number = numbers.find { |n| n.even? }
# even_number is now 8

p even_numbers = numbers.find do |n|
    n.even?
end
# ---------------------- Reduce Method----------------------
# Combines the elements of a collection into a single value by applying a block of code to 
# each element and an accumulator.

some_numbers = [1, 2, 3, 4, 5, 6]

puts some_numbers.reduce { |sum, number| sum + number} # expected and recieved output is 21 

# ---------------------- Sort Method----------------------
# Sorts the elements of a collection.

numbers = [5, 3, 2, 4, 1]
puts sorted_numbers = numbers.sort
# sorted_numbers is now [1, 2, 3, 4, 5]

# Define a Person class
class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  end
  
  # Create an array of people
  people = [Person.new("Bob", 20), Person.new("Charlie", 25), Person.new("Alice", 18)]
  
  # Sort the array of people by age
  sorted_people = people.sort {|a,b| a.age <=> b.age}
  
  # Iterate over the sorted array of people and print their name and age
  sorted_people.each {|person| puts "#{person.name} - #{person.age}"}
end

# ---------------------- fizzbuzz ----------------------

for i in 1..100
    if i % 3 == 0 && i % 5 == 0 
        puts "fizzbuzz"
    elsif i % 5 == 0 
        puts "buzz"
    elsif i % 3 == 0 
        puts "fizz"
    else
        puts i
    end
end

                                                    # ----------------------CLASSES----------------------

class Party
    # @@attendee_count = 0
    # @@attendee_list = []

    # attribute accessor to allow for individual factor print
    attr_accessor :attendee_count, :attendee_list # allows for individual factor print
    
      # initialize method to set the initial values for attendee_count and attendee_list
    def initialize
        @attendee_count = 0
        @attendee_list = []
    end

    
    # method to add attendees to the party
    def add_attendee(name)
        @attendee_count += 1
        @attendee_list.push(name)
    end

     # method to print the total attendee count and list of attendees
    def print_attendees
        puts "Total attendee count: #{@attendee_count}"
        puts "Attendee names :"
        @attendee_list.each {|attendee| puts attendee}
    end

end

# Create a new party object
party_1 = Party.new()

# Add attendees to the party
party_1.add_attendee("nolan")
party_1.add_attendee("anthony")
party_1.add_attendee("german")
party_1.add_attendee("crystal")
party_1.add_attendee("pam")
party_1.add_attendee("emily")

# Print the attendees of party_1
party_1.print_attendees # prints count and names
puts party_1.attendee_count # prints count alone
puts party_1.attendee_list # prints names alone

# Create another party object
party_2 = Party.new

# Add attendees to the party
party_2.add_attendee("john")
party_2.add_attendee("john")
party_2.add_attendee("sarah")

party_2.print_attendees # prints count and names
puts party_2.attendee_count # prints count alone
puts party_2.attendee_list # prints names alone


# # In Ruby, a class is a blueprint for creating objects (i.e. instances) 
# # that have a certain set of characteristics and behaviors. A class 
# # defines the properties (also known as attributes or fields) and 
# # methods that an object of that class should have.

# # Here's an example of a simple class definition in Ruby:

    class Dog
        attr_accessor :name, :age
      
        def initialize(name, age)
          @name = name
          @age = age
        end
      
        def bark
          puts "Woof! Woof!"
        end
    end

# # In this example, the class Dog has two properties: name and age.
# # The attr_accessor line creates getter and setter methods for 
# # these properties, so you can read and change the value of name
# # and age for any object of the class. The class also has a 
# # method called initialize, which is a special method that is 
# # called when a new object of the class is created. This method 
# # takes two arguments: name and age, and assigns them to the 
# # corresponding properties. The class also has a method called
# # bark, which simply prints "Woof! Woof!" to the console.

# # To create an object of the class, you can use the new method, like this:

    dog1 = Dog.new("Fido", 3)

# # This creates a new object of the class Dog and assigns 
# # it to the variable dog1. The initialize method is called 
# # with the arguments "Fido" and 3, so the name property of 
# # the object is set to "Fido" and the age property is set to 3.

# # Then you can use the object to access its properties and methods:

    puts dog1.name # prints "Fido"
    puts dog1.age # prints 3
    dog1.bark # prints "Woof! Woof!"

# # You can also create many objects from the same class
# # and each object will have its own properties, for example:

    dog2 = Dog.new("Buddy", 2)
    puts dog1