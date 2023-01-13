
# # methods refresher
# def method_name
#     p "Print this"
# end

# method_name

# def my_name_is(name)
#     puts "#{name} is my name"
# end

# my_name_is("Anthony")

# classes refresher
class User

    # instance attributes
    attr_accessor :username, :email

    def initialize(username, email)
        @username = username
        @email = email
    end
    # instance methods

end

joe_bob = User.new("Joe2345", "Joe2345@gmail.com")
puts joe_bob.username
puts joe_bob.email
puts "My user name is #{joe_bob.username}"
puts "My email name is #{joe_bob.email}"

# In Ruby, initialize is a special method that is called when a new 
# object is created from a class. It is used to set up or initialize
# the object's state, and can take parameters to customize the
# object's properties. For example, a class called Person might
# have an initialize method that takes a name and age as 
# parameters, and uses them to set the object's name and age properties.

# ----------------------------Self method----------------------------

class MyClass
    def self.class_method
      puts "This is a class method"
    end
  
    def instance_method
      puts "This is an instance method"
      puts "The current object is: #{self}"
    end
  end

#   Here, self is used inside the class_method to refer to the 
#   class itself. This method can be called on the class, like this:  

MyClass.class_method

# Inside the instance_method, self refers to the current 
# instance of the class. This method can be called on an 
# instance of the class, like this:

my_object = MyClass.new
my_object.instance_method

# Output: "This is an instance method"
#         "The current object is: #<MyClass:0x00007f8cf8a4f0d0>"

# In this case, self is the current instance of the MyClass
# object and it is pointing to the memory location of the instance.

#In addition to this, self can also be used to call other
#methods on the current object, for example:

class Person
    def initialize(name)
      @name = name
    end
  
    def say_hello
      puts "Hello, my name is #{@name}"
    end
  
    def introduce
      puts "My name is #{self.name}"
      self.say_hello
    end
  end

#Here, introduce method is using self to call the say_hello
#method on the current object.

#It is worth noting that in Ruby, self is the default receiver
#of method calls, so it is not always necessary to use self 
#explicitly. However, using self can make the code more explicit
#and easier to understand.