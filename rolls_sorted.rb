# Modify rolls_sorted.rb to store each result in an array and then use the Array#sort! method to sort the results before displaying them.

roll = []

1.upto(10) do
  number = (1..7).to_a.sample
  roll << number

  roll.sort!
  p "The result of your roll is #{number}"
end

p roll
