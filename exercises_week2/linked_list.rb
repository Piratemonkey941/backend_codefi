class Node
    
    attr_accessor :value, :next_node         # Node class has two instance variable, value and next_node

    def initialize(value, next_node = nil) # initialize method will take value and next_node as parameter and set the instance variable    
        @value = value
        @next_node = next_node
    end
end
  
class LinkedList                         # LinkedList class has one instance variable, head

    attr_accessor :head                     # starting place for list 

    def initialize                         # initialize method will set the head to nil
        @head = nil
    end

    def add(value)                         # add method will take value as parameter, create new node with value and current head as
        new_node = Node.new(value, @head)     # next_node and set the new node as the head of the list
        @head = new_node
    end

    def delete(value)                                                 # delete method will take value as parameter, traverse the list and find the node with the given value
        current_node = @head                                            # and remove it from the list
        
        if current_node.value == value                                  # if head has the value, set the head to next_node
        @head = current_node.next_node
        else
        previous_node = nil
        
        while (current_node != nil) && (current_node.value != value)  # traverse the list
            previous_node = current_node
            current_node = current_node.next_node
        end
        
        if current_node != nil                                        # if the node is found, set the next_node of previous node to the next_node of current_node
            previous_node.next_node = current_node.next_node
        end
        end
    end

    def find(value)                                                   # find method will take value as parameter traverse the list and find the node with the given value and return that node
        current_node = @head
        while current_node != nil && current_node.value != value
        current_node = current_node.next_node
        end
        current_node != nil
    end

    def print_list                                              # print_list method will traverse the list and print the value of each node
        current_node = @head
        while current_node != nil
        puts current_node.value
        current_node = current_node.next_node
        end
    end
end

# Creating a new list
list = LinkedList.new

# Adding elements to the list
list.add(3)
list.add(5)
list.add(7)

# Printing the list
list.print_list

# Deleting an element from the list
list.delete(5)

# Finding an element in the list
node = list.find(7)

puts "Found node with value: #{node.value}"

# Printing the list
list.print_list