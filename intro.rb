puts "Hello"
print "World"
puts "!"


#variables
name = "Mike"
puts "Your name #{name}"
puts "Your name " + name


#casting
puts 3.14.to_i
puts 3.to_f
puts 3.0.to_s

puts 100 + "50".to_i
puts 100 + "50.99".to_f

#strings
greeting = "Hello"
#indexes: 01234

puts greeting.length
puts greeting[0]
puts greeting.include? "llo"
puts greeting.include? "z"
puts greeting[1,3]

#numbers
puts 2 * 3
puts 2**3 #exponential
puts 10 % 3 #1
puts 1 + 2 * 3 # * and / is priority
puts 10 / 3.0 #double answer

num = 10
num += 100 # +=, -=, /=, *=
puts num

num = -36.8
puts num.abs() #make absolute value so takes away -
puts num.round()

# Math
puts Math.sqrt(144)
puts Math.log(0)

#User input
puts "Enter your name: "
name = gets #.chomp to take new line char away
puts "Hello #{name.chomp}, how are you"

#Arrays
lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]

puts "\n\n"
puts lucky_numbers[2,2] #nr1 which index to grab, nr2 how many to grab
puts "\n\n"
puts lucky_numbers[2..4]
puts "\n\n"

puts lucky_numbers.length

#N Dimentional Arrays
number_grid = [ [1, 2], [3, 4] ]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]

#Arrays methods
friends = []
friends.push("Oscar") #adding
friends.push("Angela")
friends.push("Kevin")

#friends.pop removes last element from the array
puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort #can sort alphabetically but if different types array could be random sorting
puts "\n"

puts friends.include? "Oscar"

#Methods
def add_numbers(num1, num2=99)
    return num1 + num2
end

sum = add_numbers(4, 3)
puts sum

#Conditionals
is_student = false
is_smart = false

if is_student and is is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"
end

# >, <, >=, <=, !=, ==, String.equals()
if 1 < 3
    puts "number comparison was true"
end

if "a" < "b"
    puts "string comparison was true"
end

#switch statements
my_grade = "A"
case my_grade
    when "A"
        puts "You Pass"
    when "F"
        puts "You fail"
    else
        puts "Invalid grade"
end

#dictionaries !!!! More to learn
test_grades = {
    "Andy" => "B+",
    :Stanley => "C", #symbol key type with :
    Ryan: "A",       #another way of writing a dict syntax
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]

#While loops
index = 1
while index <= 5
    puts index
    index += 1
end

#for loop
#one way
for index in 0..5
    puts index
end

#second way
5.times do |index|
    puts index
end

#third way
lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
    puts lucky_num
end

#fourth way
lucky_nums.each do |lucky_num|
    puts lucky_num
end

#exception catching
begin
    num = 10/0
rescue
    puts "Error"
end

begin
    puts bad_variable
    num = 10/0
rescue ZeroDivisionError
    pus "Error"
rescue
    put "All other errors"
end

raise "Made up exception"

#Object orientation
class Book
    attr_accessor : title, :author
    v#constructors
    def initialize(title, author)
        self.title = title #with self it refers to get and set methods
        @author = author
    end

    def readBook()
        puts "Reading #{self.title} by #{@author}"
    end
end

def title=(title)
    puts "Set"
    @title = title
end

def title
    puts "Get"
    return @title
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
#OR book1 = Book.new("Harry Potter", "JK Rowling")

book1.title = "Half-Blood Prince"

book1.readBook()
puts book1.title

#inheritance

class Chef
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "Yhe chef makes a special dish"
    end
end

class ItalianChef < Chef

    attr_accessor :country_of_origin
    def initialize(name, age, country_of_origin)
        @country_of_origin = country_of_origin
        super(name, age)
    end

    def make_pasta()
        puts "The chef makes pasta"
    end

    def make_special_dish()
        puts "The chef makes chicken parm"
    end
end

my_chef = Chef.new("Gordon Ramsay", 50)
my_chef.make_chicken()

my_italian_chef = ItalianChef.new("Massimo Bottura", 55, "Italy")
my_italian_chef.make_chicken()
puts my_italian_chef.age 

