
class Calculator
    def self.add(a, b)
        a + b
    end

    def self.subtract(a, b)
        a - b
    end

    def self.divide(a, b)
        a / b
    end

    def self.multiply(a, b)
        a * b
    end
end

# execute the methods
puts Calculator.add(5,10)
puts Calculator.subtract(5,10)
puts Calculator.divide(5,10)
puts Calculator.multiply(5,10)