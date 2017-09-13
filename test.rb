#!/usr/bin/ruby -w

$LOAD_PATH << '.'
require 'best_albums1'
require 'best_albums2'

a = []
for i in (0..20)
  a.push(i)
end

b = [5, 7, 9, 101]
puts a.at(5)

for i in a & b
  puts "Item in array #{i}"
end

class Person
 include BestAlbums1
  def initialize(gender, age)
    @gender = gender
    @age = age
  end

  def persons_favourite_opeth_album
    return BestAlbums1.opeths_best_album_is
  end

end

jim = Person.new'male', '25'

puts "Jims favourite album of all time is #{BestAlbums1::ALL_TIME_GREATEST}"

puts jim.persons_favourite_opeth_album


class Vehicle
  @@num_instance = 0

  def initialize(type, colour)
    @type = type
    @colour = colour
  end

  def display_vehicle_information
    puts "This is a vehicle of type #@type"
    puts "The colour of this vehicle is #@colour"
  end

  def number_of_instances
    @@num_instance += 1
    puts "Number of instances is #@@num_instance"
  end

  def vehicle_info_in_array(ary)
    ary.each do |i|
      puts i
    end
  end

  def define_vars(v)
    puts defined? v
    puts defined? @@num_instance
  end

  def uses_case(age)
    case age
      when 1..3
        puts 'between 1 and 3 year old'
      when 2..5
        puts 'between 2 and 5 years old'
      else
        puts 'older than 1 or 2'
    end
  end

  def Vehicle.uninstantiated_example
    return 100
  end
end

car = Vehicle.new('car', 'black')
bus = Vehicle.new('bus', 'red')

puts car.display_vehicle_information
puts bus.display_vehicle_information

puts car.number_of_instances
puts bus.number_of_instances

a = 'foo bar'
puts car.define_vars(a)

i = 1

if i > 2
  puts 'i is greater than 2'
elsif i == 1
  puts 'i is 1'
else
  puts 'dunno what i is'
end

puts 'Modifier example' if i == 1

puts 'Unless' unless i == 2

puts car.uses_case 5

for i in 1..10
  puts i
end

(1..10).each do |i|
  puts "#{i}"
end

for i in 1..10
  if i > 2 then
    break
  end
  puts "Value of local variable is #{i}"
end

for i in 1..10
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end

def print_strings(s1, s2)
  return "Printing the string passed in '#{s1}' and '#{s2}'"
end

def testing_returns
  return 1, 2, 3, 'hello', print_strings('Hello','World')
end

def test_variable_param(*args)
  puts args
  for a in args
    puts "Printing #{a}"
  end
end

output = print_strings'This is a test', 'Passing in a second string'
puts output

r = testing_returns
puts r

test_variable_param 1, 2, 3, 4, 5, 6,7

puts "UNINSTANTIATED #{Vehicle.uninstantiated_example}"

def foo
  a = 'foo'
end

alias bar foo

puts bar

def messin_with_blocks
  puts 'In the function'
  yield 100
  puts 'Second time in the function'
  yield 10
  puts 'Third time in the function'
  yield 1
end

messin_with_blocks{|i| puts "Think I'm in the block now #{i}"}

def testing_with_blocks(&test_block)
  test_block.call
end

testing_with_blocks{puts 'I see no reason to ever use this'}


BEGIN{
  puts <<BEGINNING
    This is the begining of the program
BEGINNING
}

END{
  puts <<ENDING
    This is the ending of the program
ENDING
}

puts BestAlbums1.opeths_best_album_is
puts BestAlbums2.opeths_best_album_is
puts BestAlbums1.metallicas_best_album_is
puts BestAlbums2.metallicas_best_album_is

h = {'a' => 1, 'b' => 2}

puts "Hash value is #{h['a']}"

for key, value in h
  puts "Hash keys and values are #{key}, #{value}"
end


