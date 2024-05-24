puts "Hello, World!"
name = "Alice"
age = 30
height = 5.8
integer_number = 10
float_number = 3.14
string_value = "Ruby is awesome"
array_data = [1, 2, 3, 4, 5]
hash_data = { "name" => "Alice", "age" => 30 }

if age >= 18
  puts "#{name} is an adult."
else
  puts "#{name} is a minor."
end

# Case statement
grade = "A"
case grade
when "A"
  puts "Excellent!"
when "B"
  puts "Good!"
else
  puts "Needs improvement."
end

# Loops (while, for)
counter = 0
while counter < 5
  puts "Loop iteration #{counter}"
  counter += 1
end

for i in 0..4
  puts "Loop iteration #{i}"
end

# Nested loops and conditional statements
(1..3).each do |i|
  puts "Outer loop iteration #{i}"
  (1..2).each do |j|
    puts "Inner loop iteration #{j}"
  end
end

# Define and call functions with parameters
def greet(name)
  puts "Hello, #{name}!"
end

greet("Bob")

# Default parameter values and variable-length argument lists
def sum(*numbers)
  numbers.reduce(0) { |sum, n| sum + n }
end

puts "Sum: #{sum(1, 2, 3, 4, 5)}"

# Returning values from functions
def square(number)
  number * number
end

puts "Square of 5: #{square(5)}"

# Arrays and Enumerable
my_array = [1, 2, 3, 4, 5]
# Add elements
my_array.push(6)
# Remove elements
my_array.pop
# Access elements
puts "Element at index 2: #{my_array[2]}"
# Enumerable methods
mapped_array = my_array.map { |num| num * 2 }
puts "Mapped array: #{mapped_array}"
selected_array = my_array.select { |num| num.even? }
puts "Selected array: #{selected_array}"
reduced_value = my_array.reduce(0) { |sum, num| sum + num }
puts "Reduced value: #{reduced_value}"

# Using all data types
puts "Integer: #{integer_number}"
puts "Float: #{float_number}"
puts "String: #{string_value}"
puts "Array: #{array_data}"
puts "Hash: #{hash_data}"

# Exercise 1
def repeat_string(str, n)
  return str * n
end

puts repeat_string("Hello", 3) # Output: HelloHelloHello

# Exercise 2
def print_file_extension(filename)
  parts = filename.split(".")
  if parts.length > 1
    return parts.last
  else
    return "No extension found"
  end
end

puts print_file_extension("example.txt") # Output: txt

# Exercise 3
def reverse_name(first_name, last_name)
  return "#{last_name} #{first_name}"
end

puts reverse_name("John", "Doe") # Output: Doe John

# Exercise 4
def total_marks(marks_hash)
  total = 0
  marks_hash.each_value do |mark|
    total += mark
  end
  return total
end

marks = {"Math" => 85, "Science" => 90, "History" => 88}
puts total_marks(marks) # Output: 263

# Exercise 5
def extreme_temperatures(temp1, temp2)
  return (temp1 < 0 && temp2 > 100) || (temp2 < 0 && temp1 > 100)
end

puts extreme_temperatures(-5, 105) # Output: true
puts extreme_temperatures(50, 120) # Output: false
