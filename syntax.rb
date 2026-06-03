puts "Hello World!" #adds new line \n
print "Hello World\n"
p "hello world"

# This is a comment

=begin
   This
   is
   comment
=end

person = "Luke"
Person = "Tom" # case sensitive
million = 1_000_000
arrayData = [1, 2, 3] #collection of ordered objects
hashData = { :name => "John"} #collection of key value pairs
symbolData = :name #like char

a, b, *c = [1, 2, 3, 4] # a is 1, b is 2, c is 3, 4

a = 1, 2 # [1, 2]

a <=> b # 0 if a == b, 1 if a > b, -1 if a < b

a === b # case equality
String === 'foo' #true
5 === (1..10) # range of 1 to 10 and result is false even though 5 is in range because of the USAGE ORDER
(1..10) === 5 #true

a = 5
b = 5.0

a .eql? b # check the same type and value - is it identical
          # true as value is the same


a equal? b # check the same object id. you can get object id with a.object_id
           # false as object id is different

#RANGE OPERATORS
(1..5).to_a #makes array of [1, 2, 3, 4, 5]
(a...5).to_a #makes array of [1, 2, 3, 4]

#DEFINING
defined? a #local variable
defined? $_ #global variable
defined? none # return is nil as it is not defined
defined? puts # returns method

#STRINGS
name = "John"
puts "Hello #{name}"
puts "Result: #{5+9}"
message = "ryby is your best friend.\n"
message.length #26 what actual lenght of a string
message.size #how much allocated
message.count("y") #2

message[0] #r
message[-1] #last char
message[0,4] #ruby
message[5..20]
message.slice(0) #r
message.slice(0,4) #ruby
message.slice(4,16) #???
message.split #["ruby", "is", "your", "best", "friend"]
message.split("is") #["ruby", "your best friend.\n"]
message.chars #splits every character

message.upcase #all string in uppercase
message.downcase #all string in lowercase
message.capitalize #first char of a string in uppercase
message.capitalize! #first char in uppercase but stays changed
message.chomp("friend.") #"Ruby is your best "
message.include?("best") #true
message.index("your") #8
message.start_with?("ruby") #false because caseSensitive
message.start_with?("Ruby") #true
message.end_with?("friend.") #true
message.delete_suffix("friend.") #??? "Ruby is your best "
message.delete_prefix("Ruby") #??? " is your best friend."

["a", "b", "c"].join #"abc"
["a", "b", "c"].join("-") #"a-b-c"
message = ""
message << "I like " #"I like"
message << "cats" #"I like cats"
message.gsub("cats", "dogs") #"I like dogs"

#STRING METHODS
"5".to_i #convert to integer
"A".to_i #0
"5".to_s #convert to string
a = "", a.empty? #true, is variable empty
"Ruby".center(3) #"   Ruby   " with 3 spaces around
"Ruby".center(3, "-") #"---Ruby---"
"Ruby".ljust(5) #"Ruby     "
"Ruby".rjust(5, "/") #"/////Ruby"
"Ruby       ".rstrip #"Ruby"
"   Ruby".lstrip
"   Ruby   ".strip
#message = 'I don't like cats' #error
message = 'I don\'t like cats' #has to be next \ to work
message = <<-STRING
first line
second line
STRING
#"first line\nsecond line\n" OR CAN BE LIKE THIS:
message = %Q( first line
second line)
%(Ruby is your best frined.) #returns string

%x!ls! #??? lists directory

message.encoding #???
message.force_encoding("UTF-8") #??? allows us to recognize different charecters from other languages

#CONDITIONALS
a = 5
b= 4

if a < b
   puts "#{a} is lesser than #{b}"
elsif a >= b
   puts "#{a} is greater than or equal to #{b}"
   if a != b
      puts "#{a} not equal to #{b}"
   end
else
   puts "else statement"
end


puts "a is greater than b" if a > b

message = if a > b
   "a greater than b"
elsif a < b
   "a less than b"
else
   "a equal to b"
end

puts message

#UNLESS STATEMENT
is_online = true

if !is_online
   puts "maintenance"
end

#is the same as
is_online = false

unless is_online
   puts "maintenance"
end

#third way
page = unless is_online
   "maintenance"
else
   "homepage"
end
puts page #maintenance

#forth way
page = is_online ? "homepage" : "maintenance"
puts page

#fifth way
puts "maintenance" unless is_online

#sixth way
unless is_online then puts "maintenance" end

#seventh way
unless is_online then puts "maintenance" else puts "homepage" end

#eight way
if is_online then puts "homepage" end #homepage???

#CASE STATEMENTS
number = 1

#first case
case number
when 0
   puts "number is 0"
when 1
   puts "number is 1"
else
   puts "number is neither 0, nor 1"
end

#second case
case
when number == 0
   puts "number is 0"
when number == 1
   puts "number is 1"
else
   puts "number is neither 0, nor 1"
end

#third case
result = case
when number == 0
   "number is 0"
when number == 1
   "number is 1"
else
   "number is neither 0, nor 1"
end
puts result

#forth case
result = case
when number > 0 then "positive"
when number < 0 then "negative"
else "0"
end
puts result

#with range
waist = 38
case waist
when 29..31
   puts "Small"
when 32..34
   puts "Medium"
when 35..38
   puts "Large"
end

#LOOPS
#while loops
i = -1
puts "#{i += 1}" while i < 4

#until loops
i = 0
until i > 5
   puts i
   i += 1
end #checks for negative conditions???

i = -1
puts "#{i += 1}" until i > 4 #with i being -1 it starts from 0

#for loops
for i in 1..5
   puts i
end # 1 2 3 4 5

for i in ["a", "b", "c"] do
   puts i
end

#this is a block
(1..5).each { |i| puts i} # 1 2 3 4 5 '.each' works on arrays and collections

(1..5).each do |i|
   puts i
end #its the same

#do while loops. its executed at least one time
i = 0
begin
   puts i
   i += 1
end while i < 5 # 0 1 2 3 4 (5 is not included)

i = 0
begin
   puts i
   i += 1
end until i > 4 # 0 1 2 3 4 (5 is not included)

#break and next
i = 0
while i < 5

   if i == 3
      break
   end

   puts i
   i += 1
end # 0 1 2

while i < 5
   i += 1 # <--this changed places

   if i == 3
      next
   end

   puts i
end # 1 2 4 5

#infinate loops
loop do
   puts "infinite loop"
end

loop do
   puts "Enter a number"
   number = gets.chomp.to_i
   if number > 100
      puts "Breaking the loop"
      break
   end
end #enter number until condition is met

#METHODS
print("Ruby") #() are optional
print "Ruby"
print = "This is a variable" #"this is a variable" - should be avoided giving same names for variables as methods are
print(print) #This is a variable +> nil

#1
def hello
   puts "Hello"
end

hello() #Hello

#2
def hello(name)
   puts "Hello #{name}"
end
hello("Jack") #Hello Jack

#3
def hello(name)
   message = "Hello #{name}"
   return message
end
puts hello("Jane") #Hello Jane

#4
def hello(name)
   return "Hello #{name}"
end
puts hello("Marry") #Hello Marry

#5
def is_negative(num)
   if num < 0
      return true
   else
      return false
   end
end
puts is_negative(5) #false

def test
   yield #passes control to a block
end
test { puts "a method"} #a method

def test
   puts "I'm in the method"
   yield
   puts "I'm in the method again"
   yield
end

test { puts "I'm in the block"} #I'm in the mothod\nI'm in the block\nI'm in the method again\nI'm in the block

def test
   yield "This is a block parameter"
   yield 1
end
test{ |a| puts "parameter: #{a}"} #parameter: This is a block parameter\nparameter: 1

def test
   yield 1, 100
end
test { |a, b| puts "p1: #{a}, p2: #{b}"} #p1: 1, p2: 100

# begin and end blocks execute in the begining and in end.
# Could be multiple of them. BEGIN blocks executed in order
# they are, END blocks executed in reverse order
BEGIN {
   puts "BEGIN BLOCK"
}
END {
   puts "END BLOCK"
}
puts "syntax program" #BEGIN BLOCK\nsyntax program\nEND BLOCK

#METHOD ARGUMENTS
def printer(val: 50, key: "name")
   puts val
end
printer(key: "val", val: 100) # using keywords does not matter the position

def hello(*names) # could be multiple variables
   names.each {|name| puts name}
end
hello "Jane", "Jack", "Lola"

def test( &block )# arg can be block???
   block.call
end
test{ puts "a block"} # a block

#LAMBDA FUNCTION
# 1
lambda { |x| x*x}.call(8) # call method passes arg to lambda function. 64

# 2
puts ->(x) { x*x }.call(9) # the same as before. 81

# 3
square = ->(x) { x*x }
puts square.call(7) # 49

# 4
square = lambda do
   |x|
   x * x
end
puts square.call(4) # 16

# 5
def test(function, argument)
   function.call(argument)
end
puts test square, 3 #9

#VARIABLES
# Global variable
$a = 1 #we can change value in func scopes and it will
# affect actul variable. But $ has to be otherwise
# variable will not be changed

#RECURSIVE METHODS
# 1
def calculate(number)
   if number == 0
      return 0
   else
      return number + calculate(number - 1)
   end
end

# 2
def calculate(number)
   return 0 if number.zero?
   number + calculate(number-1)
end

#MODULES
module ModuleA
   MESSAGE = "This is a module constant."

   def ModuleA.square(number)
      number*number
   end

end

#to import module in other files
# 1
$LOAD_PATH << '-' #???
require "test_module.rb"

# 2
$LOAD_PATH << '-' #???
require "test_module"

# 3
require "./test_module"

# 4
require_relative 'test_module'

puts ModuleA::MESSAGE #This is a module constant.
puts ModuleA.square 5 #25

#ARRAYS
# ordered integer indexed list that could be any type
# to create array:
# 1
a = []
a = Array.new
a = Array.new(5) # how big array - 5
a = Array.new(5, "test") # all 5 array parts will be "test"
a = Array.new(5) { |x| x**2 } #[0, 1, 4, 9, 16]
a = Array.[](1,2,3) #[1, 2, 3]
a = Array[1,2,3]
a = Array(1..5) #[1, 2, 3, 4, 5] why tho its () not []
mixed = ["lion", 4, 6, 2.5]
mixed = [5, [2, 6], ["lion"], 4.5]

animals = ["lion", "tiger", "leopard"]

# 1
for animal in animals
   puts animal
end

# 2
i = 0
while i < animals.length
   puts animals[i]
   i += 1
end

# 3
animals.each { |a| puts a } # these two do different things but gives same results. Enumerators

# 4
animals.map { |a| puts a } # ???

#ARRAY OPERATORS
a = [1, 2, 3, 4, 5]

a[3,3] = ["a", "b", "c"] #[1, 2, "a", "b", "c"] from 3rd element for 3 to the right

# a[3,2] = Array[100..105]
# from third element of the array changed and explanded
# from two items to six items and the rest items shifted
# in position. Also its possible to shrink it with the same method

a = [1, 2]
a << 5 #[1, 2, 5]

#multiplication
["x"] * 4 # ["x", "x", "x", "x"]
["x", "y"] * "ABC" # "xABCy"???

#ARRAY OPERATIONS
a = [1, 2, 3, 4]
b = [3, 4, 5, 6]

a - b # [1, 2] returns a with common items removed
a & b # [3, 4] returns common items
a | b # [1, 2, 3, 4, 5, 6] return a union of both arrays with no dublicate

#ARRAY METHODS
a = [1, 2, 3, 4, 5]

a.size
a.length
a.max # [5] max value in the array
a.min # [1] min value in the array
a.sum # [15] sum of the array items
a.first # [1]
a.last # [5]
a.append(6) # add to the end of array 6
a.count(1) # return number of how many times it is in array
a.pop # removes last item in the array
a.push("Ruby") # adds item to the end of the array
a.index("Ruby") # shows first item's index in the array
a.delete("Ruby")
a.at(5) # we can get an item based on index???
a.reverse # returns array in reverse order as a new array
a.shuffle # returns array in random order as a new array
a.sort # sort in ascending order
a.to_s # makes array items as a string
a.join # makes items string and joins them with given char. Default is ""
a.include?(3) # checks if item is in array. Returns bool
a.each { |x| puts x }
a.each { |i| puts "index #{i}"}
a.each_with_index { |value, index| puts "index=#{index} --- value=#{value}" }
# shows index and value of an item
a.map { |x| x**2 } # returns changed values of the array??? does it change it or makes a new array?

a = [1, 2, [4, 5, ["a", "b"]]]
a.flatten # [1, 2, 4, 5, "a", "b"]

[1, 2, 3].product(["a", "b"]) #??? [[1, "a"], [1, "b"], [2, "a"], [2, "b"], [3, "a"], [3, "b"]]


#HASHES - unordered collection of items. Has key value pairs
h = {}
h = { :name=>"John", :lastname=>"Doe" } # {:name=>"John", :lastname=>"Doe"}
h = { "name"=>"John" }
h = { 1=>"test" }
h = { ["test", 1]=>"test value"}
h = { { :name=>"John" }=>"test" }
h = Hash.new #{}
h = Hash.new("test")
h.default #"test"
h = Hash["number"=>100, 5=>"test"] # {"number"=>100, 5=>"test"}
h = { :name=>"John", :lastname=>"Doe" }
h = { name:"John", lastname:"Doe" } # these two are the same

#Hash looping
person = { :name=>"John", :lastname=>"Doe", :city=>"London" }

#to show each value in the hash
# 1
for key, value in person
   puts "#{key} - #{value}"
end

print person.keys #show hash keys as an array
print person.values #show hash values as an array

# 2
i = 0
while i < person.length
   puts "#{person.keys[i]} - #{person.values[i]}"
   i += 1
end

h[:name] = "John"
h["lastname"] = "Doe"
h[10] = "test"
h[:city] #nil as it was not in the h

h = Hash.new("This is a default value") #???
h[:city] # "This is a default value"
h["test"] # "This is a default value"

#Hash methods
h.length
h.size #???
h.to_s
h.to_a # converts to array
h.min # returns key value array according to minimal number or char in alphabetical order
h.max
h.fetch(:name) #if exist return value of the key
h.values # returns values of h
h.keys # returns keys of h
h.key("John") #[:name] returns key
h.has_key?(:city) #true
h.key?(:city) # is it a key. true
h.value?("John") # is it a value. true
h.store(:email, "john.doe@example.com") # adds hash to the end of a list
h.delete(:email)
h.merge({ :city=>"Paris", :phone=>"0123456789"}) # merge two hashes into one
h.sort # sorts key values by accending order and returns as key value arrays
h.each {|key, value| puts "#{key} = #{value}"} # goes through hash list
h.reverse_each {|key, value| puts "#{key} = #{value}"}
h.clear #removes all key value pairs

#FILES AND DIRCTORIES
# make directories in .rb
puts Dir.pwd # prints current working directory

Dir.mkdir "foo" # created directory
Dir.mkdir "bar"

# 1
print Dir.glob "*" # shows every file and directories "*.rb" - will only show files with .rb end

# 2
Dir.glob("*") do |filename|
   puts filename
end

# changes current working directory
puts Dir.pwd
Dir.chdir "foo"
puts Dir.pwd

Dir.delete("bar")

puts Dir.pwd # prints absolute path???
folder = Dir.new "foo" # this can be used with .open instead of .new
# 1
print folder.entries # shows content as an array
# 2
folder.each do |file|
   puts file
end   # shows each entry in new line
# 3
print Dir.entries("/usr/bin") # shows as an array
# 4
Dir.foreach("/usr/bin") do |entry|
   puts entry
end
# 5
print Dir["/usr/bin"]

f = File.new("test.txt", "w+")
f.puts "First line" # has \n
f.write "second line" # doesnt have \n
f.write "third line"
f.close # creats file. finishes it

File.open("text.txt", "r") do |file|
   puts file.read # read all content of the file
end

f = File.open("test.txt", "r")
puts f.read # uses memory to read in. And if not specified will read all file.
f.rewind # frees memory of reading???
puts f.readline # reads until \n included

f.each do |line|
   puts line
end # shows each line

File.absolute_path("test.txt") # shows absolute path
puts
File.basename("absolute_path", ".txt") # shows file name. If we dont want extension, we specify it as second argument

puts File::exist?("test.txt")
puts File.file?("test.txt")
puts File.directory?("test.txt")
File.rename("test.txt", "foo.txt")
File.delete("foo.txt")

#EXCEPTIONS
a = 5
puts "before exception"
raise Exception, "an exception" if a > 5 # stops code from executing the code later
puts "after exception"

begin # everything between begin and rescue is secure
   puts "processing"
   raise NameError, "an exception" # could be without NameError
rescue Exception => e
   puts "exception handling"
   puts e.message # prints here and exception
end

begin
   puts "before exception"
   a = 3 / 0
   puts "after exception"
rescue => e
   puts "#{e.class} : #{e.message}" # ??? Concept of this is not clear. ruby backtracks something
   e.backtrace.inspect
   #or
   e.backtrace.each { |location| puts location }

   puts "#{$!.class} : #{$!.message}" #???
   $@.each { |locvation| puts location } #???
rescue Exception => e # can be few rescues
   puts "#{e.class} : #{e.message}"
else
   puts "no errors!"
# if we need to execute some code regardless if error accured:
ensure
   puts "ensuring execution" # ??? what happens if ensure code itself has an error?
end

filename = "text.txt"
begin
   file = File.open(filename)
   if file
      puts "File opened successfully"
   end
rescue
   puts "exception"
   filename = "test.txt"
   retry # exception is thrown but then it is fixed with new input (as filename here) and code is retried to run again
end

#THROW-CATCH STATEMENTS
array = [
   ["foo", "bar", "wanted", "test"],
   [1, 2, 3, 4, 5,],
   ["a", "b", "c", "d"]
]

counter = 0
search = nil

# 1
catch(:found) do
   array.each do |raw|
      raw.each do |item|
         counter += 1
         if item == "wanted"
            search = item
            throw(:found)
         end
      end
   end
end

puts "Counter: #{counter}"
puts "Search: #{search}"

# 2
search = catch(:found) do # add search variable
   array.each do |raw|
      raw.each do |item|
         counter += 1
         throw(:found, item) if item == "wanted" # add item argument??? deleted search and put if statement in one line
      end
   end
end

puts "Counter: #{counter}"
puts "Search: #{search}"

#OOP
class Person
   # 2
   #accesor method. to make instanceses variables available to get outside class
   attr_reader :name, :age # this makes so we dont need getter methods???
   attr_writer :name, :age # we dont need other setter methods???

   # 3
   attr_accessor :name, :age # if we will need both getter and setter

   def initialize(name, age)
      @name = name
      @age = age
   end
   def displayPerson
      puts "Name: #{@name} Age: #{@age}"
   end

   # 1
   #get method
   def name # ???to get attributes of the class they need to be in getter and setter functions
      @name
   end
   #set method
   def name=(new_name)
      @name = new_name
   end
end

p1 = Person.new("John", 25)
puts p1.name #getter as in asks to know value???
p1.name = "Jack" #setter as in makes value???

#ATTRIBUTES:: AND CONSTANTS
class Person
   MESSAGE= "Class Constant" # constants start with UPPER CASE
   @@counter = 0 # class variable shared across all instances
   def initialize
      @@counter += 1
   end

   # 4
   def self.counter
      @@counter
   end
   def self.counter=(new_counter)
      @@counter = new_counter
   end
end

Person.counter = 5
puts Person::MESSAGE #???

#INHERITANCE
class Person
   def initialize(name, age)
      @name, @age = name, age
   end
   def test
      puts "test statement"
   end
end

class Employee < Person
   def displayInfo
      puts "Name: #{@name} Age: #@age"
   end
end

e = Employee.new("Lala", 20)
e.displayInfo
e.test
p Employee.ancestors # shows [Employee, Person, Object, Kernel, BasicObject]

#INCLUDE, EXTEND and PREPEND keywords
module ModuleA
  def dummy
    puts "Dummy from ModuleA"
  end
end
module ModuleB
  def dummy
    puts "Dummy from ModuleB"
  end
end

# 1
class Worker
  include ModuleA
  def run
    dummy()
  end
end

p Worker.ancestors #shows all hierarchy
w = Worker.new #method in the last module is used
w.run

# 2
module WorkerDebugger
  def run(params)
    puts "Running with params: #{params.inspect}"
    result = super(params)
    puts "Completed: Results: #{result}"
  end
end

class Worker
  prepend WorkerDebugger # this way module will be at the bottom of the ancestor chain
  def run(params)
    puts "Working on params: #{params.inspect}"
    params.map { |i| i**2 }
  end
end

w = Worker.new
w.run([1, 3, 5])

# 3
# with extend function we can use module methods in a class instance
module ModuleC
  def self.method1 # with self it doesnt work with extend??? !!!if class has nothing in it
    puts "method1: class method"
  end
  def method2 # this one without self works with object.extend??? !!!if class has nothing in it
    puts "method2: instance method"
  end
end

class Test
end

object = Test.new
object.extend ModuleC
object.method2

#POLYMORPHISM
# ability to present the same interface for different data types
class Document
  def initialize(title)
    @title = title
  end
end

class PDF < Document
  def print
    puts "printing PDF, title: #@title"
  end
end

class Word < Document
  def print
    puts "printing Word, title: #@title"
  end
end

Word.new("Ruby Examples").print
PDF.new("Polymorphism").print

#duck method
class WhatsApp
  def call
    puts "WhatsApp call"
  end
end

class Skype
  def call
    puts "Skype call"
  end
end

apps = [Skype, WhatsApp]
apps.each do |obj|
  obj.new.call
end

#ENCAPSULATION
# internal representation of an object that is hidden
# from other objects. It can be used to hide variables
# and methods. It can only accessible through public methods.

class Person
  def initialize(name, profession)
    @name, @profession = name, profession
  end
  def name
    @name
  end
  def info # getter method
    "Name: #{@name}, Profession: #{@profession}"
  end
  def setProfession(profession)
    @profession = profession
  end
end

p = Person.new("John", "Doctor")
p.setProfession("Engineer")
puts p.info

#METHOD OVERRIDE
class Animal
  def swim
    puts "Animals can swimming"
  end
end

class Tiger < Animal
  def swim
    puts "Tigers can swimming"
  end
end

tiger = Tiger.new
tiger.swim

class Point # vectors??
  attr_accessor :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end
  def to_s # defines how the object is printed as a string
    "Point(#{@x}, #{@y})"
  end
  def +(other) #can you just put symbol like that???
    Point.new(@x + other.x, @y + other.y)
  end
end

p1 = Point.new(2, 3)
p2 = Point.new(4, 7)
puts p1 + p2 # needs to be defined "+" as it is not defined method at the moment

#PRIVATE - PROTECTED METHODS
#public - default, private, protected

class A
  def method
    puts "method1: public from #{self.class}"
  end

  private # cannot be accessed outside the class. can be written above method or as declaration
  def method2
    puts "method2: private method from #{self.class}"
  end
  private :method2 #declaration way of making it private ???where does it have to be placed
#??? we cannot call private method with explicit reciever as self.method2 for example

  protected #the difference between private and protected is that protected can be called with explicit reciever as self.method3 for example
  def method3
    puts "method3: protected from #{self.class}"
  end
  #protected :method3 B.new.method3 will not work
end

class B < A
  def test
    method1
  end
end

B.new.test #public method from B
