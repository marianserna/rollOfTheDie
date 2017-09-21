# Figure out the odds of each total coming up
# The odds of 2 coming up are 3%

# repetitions looks like this: {2=>1, 3=>2, 4=>3, 5=>4, 6=>5, 7=>6, 8=>5, 9=>4, 10=>3, 11=>2, 12=>1}

#WAY 1

dice1 = (1..6).to_a
permutations = dice1.repeated_permutation(2).to_a

totals = permutations.map do |permutation|
  permutation.inject(0, :+)
end

p totals

# Reduce takes an accumulator and an element
repetitions = totals.reduce({}) do |hsh, total|
  p hsh
  hsh[total] ||= 0
  hsh[total] += 1
  hsh
end


#WAY 2

# dice1 = (1..6).to_a
# permutations = dice1.repeated_permutation(2).to_a
#
# totals = permutations.map do |permutation|
#   permutation.inject(0, :+)
# end
#
# repetitions = {}
#
# # totals.each do |total|
# #   if repetitions[total]
# #     repetitions[total] += 1
# #   else
# #     repetitions[total] = 1
# #   end
# # end
#
# # Avoid if statement:
# totals.each do |total|
#   repetitions[total] ||= 0
#   repetitions[total] += 1
# end
#
# repetitions.each do |total, total_count|
#   percentage = ((total_count.to_f / totals.length) * 100).round(0)
#   puts "The odds of #{total} coming are #{percentage}%"
# end
#
# p repetitions


# WAY 3

# dice1 = (1..6).to_a
# permutations = dice1.repeated_permutation(2).to_a
# totals = []
#
# permutations.each do |permutation|
#   total = permutation[0] + permutation[1]
#   totals << total
# end
#
# 2.upto(12) do |number|
#   count = totals.count(number)
#   percentage = ((count.to_f / totals.length) * 100).round(0)
#   puts "The odds of #{number} coming are #{percentage}%"
# end
