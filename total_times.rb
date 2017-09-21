# Notice that the totals above (previous exercise) range from 2 to 12.
# Figure out how many times each total will come up if each possible permutation is rolled once.
# Use a Hash with keys of 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 & 12 to keep track of how many times each total occurred.
# Your output should look like so:
#
# $ ruby total_times.rb
# 2 occurs 1 times
# 3 occurs 2 times

# WAY 1

dice1 = (1..6).to_a
permutations = dice1.repeated_permutation(2).to_a
totals = []

permutations.each do |permutation|
  total = permutation[0] + permutation[1]
  puts "Permutation #{permutation} total is #{total}"

  totals << total
end

2.upto(12) do |number|
  count = totals.count(number)
  pluralize = count == 1 ? "time" : "times"
  puts "#{number} occurs #{count} #{pluralize}"
end

# WAY 2

 # dice1 = (1..6).to_a
 # permutations = dice1.repeated_permutation(2).to_a
 #
 # # map the permutations into a new array of the totals
 # single_permutations = permutations.map do |permutation|
 #   permutation[0] + permutation[1]
 # end
 #
 # # group the permutations together, then loop through them and output their size
 # single_permutations.
 #   group_by { |permutation| permutation }.
 #   each do |permutation, occurrences|
 #     puts "You roll #{permutation} - #{occurrences.size} times"
 #   end

 # WAY 3

#  dice1 = (1..6).to_a
#  permutations = dice1.repeated_permutation(2).to_a
#
#  single_permutations = []
#
#  keys = {
#    2 => 0,
#    3 => 0,
#    4 => 0,
#    5 => 0,
#    6 => 0,
#    7 => 0,
#    8 => 0,
#    9 => 0,
#    10 => 0,
#    11 => 0,
#    12 => 0
#  }
#
#  permutations.each do |permutation|
#    total = permutation[0].to_i + permutation[1].to_i
#    keys[total] += 1
#  end
#
# keys.each do |key, value|
#   puts "#{key} occurs #{value} times"
# end
