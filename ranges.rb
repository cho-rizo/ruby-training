#!/usr/bin/ruby -w

range1 = 0..50
puts range1.min
puts range1.max
puts range1.first
puts range1.last
puts range1.include?(7)

if (range1 === 25)
  puts 'Yea it does'
end

range1.each do |i|
  puts i
end

a = [1,2,3,4]
b = a.collect
for i in b
  puts i
end

