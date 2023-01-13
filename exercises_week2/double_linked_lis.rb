class Node
    # Node class has three instance variable, value, prev_node and next_node
    attr_accessor :value, :prev_node, :next_node

    # initialize method will take value, prev_node and next_node as parameter
    # and set the instance variable 
    def initialize(value, prev_node = nil, next_node = nil)
      @value = value
      @prev_node = prev_node
      @next_node = next_node
    end
  end
  
  class DoublyLinkedList

    # DoublyLinkedList class has two instance variable, head and tail
    attr_accessor :head, :tail

    # initialize method will set the head and tail to nil
    def initialize
      @head = nil
      @tail = nil
    end
  
    # add method will take value as parameter, create new node with value,
    # current head as next_node, and set the new node as the head of the list
    def add(value)
      new_node = Node.new(value, nil, @head)
      if @head != nil
        @head.prev_node = new_node
      end
      @head = new_node
      @tail = new_node if @tail == nil
    end
  
    # delete method will take value as parameter,
    # traverse the list and find the node with the given value
    # and remove it from the list
    def delete(value)
      current_node = @head
      while current_node != nil
        if current_node.value == value

          # if current node has prev_node, set the next_node of previous node to the next_node of current_node
          if current_node.prev_node != nil
            current_node.prev_node.next_node = current_node.next_node
          else

            # if current node is head, set the head to the next_node
            @head = current_node.next_node
          end

          # if current node has next_node, set the prev_node of next node to the prev_node of current_node
          if current_node.next_node != nil
            current_node.next_node.prev_node = current_node.prev_node
          else
            
            # if current node is tail, set the tail to the prev_node
            @tail = current_node.prev_node
          end
          return true
        end
        current_node = current_node.next_node
      end
      false
    end
  
    # find method will take value as parameter,
    # traverse the list and find the node with the given value
    # and return the node
    def find(value)
      current_node = @head
      while current_node != nil
        return current_node if current_node.value == value
        current_node = current_node.next_node
      end
      nil
    end
  
    # print_list method will traverse the list and print the value of each node
    def print_list
      current_node = @head
      while current_node != nil
        puts current_node.value
        current_node = current_node.next_node
      end
    end
  end

  # Creating a new list
list = DoublyLinkedList.new

# Adding elements to the list
list.add(3)
list.add(5)
list.add(7)

# Deleting an element from the list
list.delete(5)

# Finding an element in the list
node = list.find(7)
puts "Found node with value: #{node.value}"

# Printing the list
list.print_list

# add method will add a new node to the list, with the value passed as 
# parameter, and the current head as next_node and set the current 
# head's prev_node to the new node


# delete method will remove the node with the value passed as parameter
#  from the list and return true, otherwise it will return false


# find method will return the node with the value passed as parameter,
#  otherwise it will return nil


# print_list method will print the value of each node in the list