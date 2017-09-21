# Modify this program to also display the total of each permutation.
# Your output should look like so:
# $ ruby permutation_totals.rb
# Dice Roll: 1, 1  Total: 2
# Dice Roll: 1, 2  Total: 3
# Dice Roll: 1, 3  Total: 4
# Dice Roll: 1, 4  Total: 5

dice1 = (1..6).to_a
permutations = dice1.repeated_permutation(2).to_a

permutations.each do |permutation|
  puts "Dice Roll: #{permutation[0].to_i}, #{permutation[1].to_i} Total: #{permutation[0].to_i + permutation[1].to_i} "
end
