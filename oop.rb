# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color

    def initialize(name, color = "silver")
        @name = name
        @color = "silver"
    end

    def say(string)
        "*~* #{string} *~*"
    end

end
 
unicorn1 = Unicorn.new("Fluffy")
p unicorn1
unicorn1.say()
p unicorn1
    

# I was having trouble with the method that outputs "*~*", would love input.


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty

    def initialize(name, pet = "bat", thirsty)
        @name = name
        @pet = "bat"
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Dracula", "pet")
p vampire1
vampire2 = Vampire.new("Count", "bunny")
p vampire2



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry
  
    def initialize(name, rider, color, is_hungry = true)
      
        @name = name
        @rider = rider
        @color = color
        @counter = 0
        @is_hungry = is_hungry
    end
  
    def eat
        @counter = @counter + 1
        if @counter >= 4
            @is_hungry = false
        end
    end      
end

dragon1 = Dragon.new("Niv", "Mizzet", "Red")
p dragon1.name
p dragon1.rider
p dragon1.color
p dragon1.is_hungry
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1.is_hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

  def initialize(name, disposition, age =0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = has_ring
  end


  def celebrate_birthday
    @age += 1
    @is_adult = true if @age >= 33
    @is_old = true if @age >= 101
  end

  def has_ring
    @name == "frodo"
  end
end

hobbit1 = Hobbit.new("frodo", "friendly", 33)
p hobbit1






