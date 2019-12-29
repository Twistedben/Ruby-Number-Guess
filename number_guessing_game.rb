#!/usr/bin/env ruby 

class InvalidNumberRange < StandardError

end
puts "==========================="
puts "| Ruby Number Guess Game |"
puts "==========================="
puts "==========================="
print "What is your name? "


response = gets.chomp

puts "Hello, #{response}! "
puts "Guess a number from 0 to 10. You have three guesses."

random_number_answer = rand(11)


3.times do |i| 
  puts "Guess #{i + 1}:" 
  guessed_answer = gets.chomp
  guessed_answer = guessed_answer.to_i

  if guessed_answer > 10 || guessed_answer < 0
    raise InvalidNumberRange.new, "Your number has to be between 0 and 10"
  else
    if guessed_answer == random_number_answer
      abort("Correct! Good job!")
    else
      puts "Try again!" unless i == 2
      puts "Sorry, you're out of guesses. The number was: #{random_number_answer}" if i == 2
    end
  end

end
