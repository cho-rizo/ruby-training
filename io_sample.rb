#!/usr/bin/ruby -w

aFile = File.new("my_file.txt", "r+")
if aFile
  content = aFile.sysread(200)
  puts content
else
  puts "Unable to open file!"
end

arr = IO.readlines('my_file.txt')
puts arr[0]
puts arr[1]

puts File::ctime('my_file.txt')
puts Dir.pwd
puts Dir.entries(Dir.pwd)


