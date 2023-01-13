class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
    @length = length
    @width = width
    end

    def area
        @length * @width
    end
    
    def perimeter
        (@length * 2) + (@width * 2)
    end
end

rect = Rectangle.new(4, 5)

rect.length = 5
rect.width = 8

puts "Area #{rect.area}"

puts "Perimeter #{rect.perimeter}"