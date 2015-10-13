require 'pry' #can use binding.pry to interact with the code as if in pry
=begin
#Temp Converter
def temp_converter
  puts "Type 1 to convert from Celsius to Fahrenheit OR 2 for Fahrenheit to Celsius"
  measurement = gets.strip

  if measurement == '1'
    puts "Enter temperature in Celsius"
    temp = gets.strip.to_f
    puts "temp is #{temp}"
    converted = (temp * 9/5.0 + 32).round(2)
    puts "Converted is #{converted}"
    puts "#{temp} degrees Celsius is #{converted} degrees Fahrenheit"
  elsif measurement == '2'
    puts "Enter temperature in Fahrenheit"
    temp = gets.strip.to_f
    puts "temp is #{temp}"
    converted = ((temp - 32) * 5/9.0).round(2)
    puts "Converted is #{converted}"
    puts "#{temp} degrees Fahrenheit is #{converted} degrees Celsius"
  else
    puts "That is not a valid input"
    temp_converter
  end
end

temp_converter


#Guessing Game
def guessing_game
  comp = rand(2...100) #or rand 100
  tries = 0

  puts "Guess a number between 1 and 100"
  user =  gets.chomp.to_i
  # if user.respond_to?('to_i')
  #   user.to_i!
  # else
  #   puts "Invalid Guess"
  # end
  tries += 1
  until user == comp
    if user > comp 
      puts "The number is lower than #{user}. Guess again."
    else 
      puts "The number is higher than #{user}. Guess again."
    end
    tries += 1
    user = gets.chomp.to_i
  end
  puts "You got it in #{tries} tries"
end

guessing_game

#pyramid
def art
 puts "What character do you want?"
 character = gets.chomp
 puts "How many rows do you want?"
 rows = gets.chomp.to_i

 if rows % 2 == 0
  total = rows * 2 +10
 else
  total = rows * 2 - 1 + 10
 end

 prev = 0

 rows.times do |x|
  if x == 0
    puts "#{character}".center(total)
    prev = 1
  else
    prev = prev+2
    row_char = "#{character}"*(prev)
    #binding.pry
    puts "#{row_char}".center(total)
  end
  end
end

art
=end

#reverse string
def reverse
  puts "Enter a string"
  str = gets.chomp
  #arr = str.to_a
  iterations = str.length/2.floor

  iterations.times do |x|
    str[x], str[-x-1] = str[-x-1], str[x]
  end
  #binding.pry
  puts str
end
reverse