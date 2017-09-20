# Adjust doubles.rb so that if two of the same number are rolled, it displays "Doubles!".

# Your output should be similar:

# $ ruby doubles.rb
# You rolled a 6 and a 5.
# Your total: 11.

dice1 = []
dice2 = []

1.upto(3) do
  number1 = (1..7).to_a.sample
  dice1 << number1
  number2 = (1..7).to_a.sample
  dice2 << number2

  if number1 == number2
    p "Doubles!"
  else
    p "You rolled #{number1} and #{number2}"
    p "Your total is #{number1 + number2}"
  end
end

p dice1
p dice2
