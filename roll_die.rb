# Create a ruby program called roll_die.rb that generates a number between 1 and 6 (like a six sided die), and displays that result.
#
# When you run your program, it should output the result like so:
#
# $ ruby roll_die.rb
# The result of your roll is 4.

number = Random.rand(7) + 1
p "The result of your roll is #{number}"
