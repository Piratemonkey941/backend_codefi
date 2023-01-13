
class Person
     attr_accessor :weight, :height, :name

     def initialize(weight, height, name)  #initialize method with arguments for weight, height, name
        @weight = weight
        @height = height
        @name = name
        
     end

     def eat(food)                         # instance method for eat
        puts "Eating #{food}"
     end
end

class Doctor < Person
    def initialize                         #initialize method that prints message
        puts "I am a Doctor"
    end
end

class Teacher < Person
   def initialize                          #initialize method that prints message
        puts "I am a Teacher"
    end
end

class Engineer < Person
    def initialize                         #initialize method that prints message
        
        puts "I am a Engineer"
    end
end

# creating instances
doctor = Doctor.new
teacher = Teacher.new
engineer = Engineer.new
doctor.eat("Pizza")

