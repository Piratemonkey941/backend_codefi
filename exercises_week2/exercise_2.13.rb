class Person
    attr_accessor :name, :age

    @@people = []               # class variable to store all the people instances

    def  initialize(name, age)  #initializing the instance variables
        @name = name
        @age = age 
        @@people << self        #push the current instance in the class variable
    end

    def self.print_all_people   # class method to print all people
        @@people.each do |person|
            puts "Name #{person.name}, Age #{person.age}"
        end
    end
end

# creating instances of Person
person1 = Person.new("John Doe", "34")
person2 = Person.new("Bill Smith", "45")
person3 = Person.new("Jane Clint", "23")

Person.print_all_people        