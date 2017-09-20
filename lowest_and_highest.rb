# Adjust your program so it only rolls 5 numbers (instead of ten).
#
# Use Array#first and Array#last to display both the lowest and highest of the die results.
#
# Your output should be similar:
#
# $ ruby lowest_and_highest.rb
# The result of your roll is 2.
# The result of your roll is 3.
# The result of your roll is 5.
# The result of your roll is 5.
# The result of your roll is 6.
# The lowest number is 2.
# The highest number is 6.

roll = []

1.upto(5) do
  number = (1..7).to_a.sample
  roll << number
  p "The result of your roll is #{number}"
end

p "The lowest number is #{roll.first}"
p "The highest number is #{roll.last}"
