# Display what total is most likely to come up.
#
# Your output should look like so:
#
# $ ruby most_likely.rb
# The odds of 2 coming up are 3%
# The odds of 3 coming up are 6%
# The odds of 4 coming up are 8%
# The odds of 5 coming up are 11%
# The odds of 6 coming up are 14%
# The odds of 7 coming up are 17%
# The odds of 8 coming up are 14%
# The odds of 9 coming up are 11%
# The odds of 10 coming up are 8%
# The odds of 11 coming up are 6%
# The odds of 12 coming up are 3%
# 7 is most likely to come up with a 17% chance.

dice1 = (1..6).to_a
permutations = dice1.repeated_permutation(2).to_a

totals = permutations.map do |permutation|
  permutation.inject(0, :+)
end

# Reduce takes an accumulator and an element
repetitions = totals.reduce({}) do |hsh, total|
  hsh[total] ||= 0
  hsh[total] += 1
  hsh
end

# p repetitions
# {2=>1, 3=>2, 4=>3, 5=>4, 6=>5, 7=>6, 8=>5, 9=>4, 10=>3, 11=>2, 12=>1}

percentages = []
keys = repetitions.keys

repetitions.each do |key, value|
  percentage = ((value.to_f / totals.length) * 100.0).round(0)
  percentages << percentage

  puts "The odds of #{key} coming up are #{percentage}%"
end

highest_percentage = percentages.max
index = percentages.index(highest_percentage);

puts "#{keys[index]} is most likely to come up with a #{highest_percentage}% chance"
