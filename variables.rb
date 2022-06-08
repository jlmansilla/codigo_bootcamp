def basic_method
    
    puts $x    
end
$x=10
basic_method

class Car
    def initialize(brand:)
        @brand = brand
        if defined?(@@numbers_of_cars)

            @@numbers_of_cars += 1
           
       else
           @@numbers_of_cars = 1
       end
    end
    
    def start
        puts"#{@brand} Starting"

    end

    def self.count
        @@numbers_of_cars
    end
    
end

vw = Car.new(brand: 'Volkswagen')
mercedez = Car.new(brand: 'Mercedez Benz')
puts Car.count
vw.start