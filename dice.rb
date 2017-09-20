# Dice usually come in pairs.
# Create a program called dice.rb that simulates two die rolls, displays the result of each, and the total.
# Your output should be similar:

# $ ruby dice.rb
# You rolled 2 and 6.
# Your total is 8.

dice1 = []
dice2 = []
total = []

1.upto(3) do
  number1 = (1..7).to_a.sample
  dice1 << number1
  number2 = (1..7).to_a.sample
  dice2 << number2
end

dice1.zip(dice2).each { |rolls| puts "You rolled #{rolls[0]} and #{rolls[1]}.\nYour total is #{rolls[0] + rolls[1]}" }


# p dice1.each_with_index.all? { |number, index| number == dice2[index] }
