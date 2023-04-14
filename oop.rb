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

    def change_pet(new_pet)
        @pet = new_pet
    end

    def drink_method(takes_drink)
        @thirsty = takes_drink
        false
    end
end

vampire1 = Vampire.new("Dracula", "bat",)
p vampire1
vampire1.change_pet("bunny")
p vampire1
vampire1.drink_method("false")
p vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry

    def initialize(name, rider, color, is_hungry = "true")
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

        def eat_method(eats_meat)
            if eats_meat >=4
                @is_hungry = false
            end
        end
    end

    dragon1 = Dragon.new("Niv", "Mizzet", "Red")
      p dragon1
    dragon1.eat_method(4)
      p dragon1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age

    def initialize(name, disposition, age = 0, is_adult = false, is_old = false, has_ring = false)
        @name = name
        @disposition = disposition
        @age = 0
    end

    def celebrate_birthday(new_age)
        @age = new_age + 1
    end

    def become_adult(new_age)
       if new_age >= 33
        @is_adult = true
       end
    end

    def become_old(new_age)
        if new_age >= 101
            @is_old = true
        end
    end

    def ring_bearer(new_name)
        if name = "frodo"
            has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("frodo", "friendly", 33)
p hobbit1
hobbit1.celebrate_birthday(33)
p hobbit1
hobbit1.become_adult(33)
p hobbit1
hobbit1.become_old(101)
p hobbit1
hobbit1.ring_bearer("frodo")
p hobbit1






