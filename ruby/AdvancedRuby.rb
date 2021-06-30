# Object Oriented
puts "string are objects".upcase()
puts :a_symbol.object_id()
puts 10.class

person = Object.new()

# metaprogramming
def person.talk()
    puts "I can talk"
end

person.talk()

def person.goingTo(place)
    #"I'm going to " + place
    "I'm going to #{place}" # interpolation
end

puts person.goingTo("the hospital")

def person.changeClothes(clothing, place="store")
    "Changing my #{clothing} in the #{place}"
end

puts person.changeClothes("pants")

person.send(:talk)

class Person
    def talk
        puts "I know how to talk"
    end

    def change(clothing, place="bathroom")
        "Changing my #{clothing} in the #{place}"
    end
end

p = Person.new()
puts p.class
p.talk()

class Person
    def new_method
        puts "new method add to an existing class"
    end
end

p.new_method()

puts 2+5
class Fixnum
    def +(outro)
        self * outro # using the operator + multiply instead of add from now on
    end
end
puts 2+5

puts puts.class

class Person
    def set_name(new_name)
        @name = new_name
    end 

    def get_name
        @name
    end
end

p.set_name("John Doe")
puts p.get_name()

class Person
    def initialize
      puts "A new Person was born"
    end
end

p2 = Person.new()

class Person
    def initialize(name)
      @name = name
    end
end

john = Person.new("John")
puts john.get_name()

class Animal
    #def name # acessor
    #    @name
    #end

    #def name=(new_name)
    #    @name = new_name
    #end

    attr_accessor :name # Same thing as the code above
end

tiger = Animal.new()
tiger.name = "Black Tiger" # Syntax Sugar
puts tiger.name

class Animal
    def animals_in_the_world
        100000000
    end
end

a = Animal.new()
puts a.animals_in_the_world()

class Student
    # Knows nothing
end

class Teacher
    def teach(student)
        def student.write
            "I know how to write now"
        end
    end
end

student = Student.new()
puts student.respond_to? :write

teacher = Teacher.new()
teacher.teach(student)
puts student.write()

# Colections

list = Array.new()
list << "first"
list << "second"
puts list[1]

list = [1, 2, "string", :simbolo, /$regex^/]
puts list[2]

def metodo(*args)
    puts args[0]
    puts args[1]
end

metodo("abc", "xpto", "pele")

map = Hash.new()
map[:item1] = "aaaaa"
map['item2'] = "bbbbb"
map[p] = "ccccc"

def transfer(args)
    destino = args[:destino]
    valor = args[:valor]
end

transfer({ :destino => "97456123", :valor => 100.0 })

def my_method1
    puts "hey"
    yield
end

my_method1 { puts "associated code" }

my_method1 do
    puts "this"
    puts :block
    puts "has"
    puts :multiple
    puts "lines"
end

def pass_parameters
    yield("some", "text")
end

pass_parameters { |m1, m2| puts "#{m1}, #{m2}" }
# or
pass_parameters do |m1, m2|
    puts "m1: #{m1}"
    puts "m2: #{m2}"
end

list = ["4", "um", "cinco", "bla"]
list.each do |item|
    puts item
end

list = ["quatro", "um", "cinco", "bla"]
nlist = list.map do |item|
    item.upcase()
end

puts nlist

# Object Oriented

class Animal
    def eat
        "eating"
    end
end

class Duck < Animal
    def quack
        "Quack!"
    end
end

duck = Duck.new()
puts duck.eat()

class NormalDuck
    def do_quack
        "Quack!"
    end
end

class WeirdDuck
    def do_quack
        "Queck!"
    end
end

class DuckOwner
    def get_duck(duck)
        duck.do_quack()
    end
end

duck1 = NormalDuck.new
duck2 = WeirdDuck.new
owner = DuckOwner.new
puts owner.get_duck(duck1)
puts owner.get_duck(duck2)