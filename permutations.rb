# Create a program called permutations.rb.
# Write a program that goes through all possible permutations of two dice rolling.
# Your output should look like so:
# $ ruby permutations.rb
# 1 1
# 1 2

# dice1 = (1..7).to_a
# permutations = dice1.repeated_permutation(2).to_a
#
# permutations.each do |permutation|
#   puts "#{permutation[0].to_i} #{permutation[1].to_i}"
# end

1.upto(6) do |roll1|
  1.upto(6) do |roll2|
    puts "#{roll1} #{roll2}"
  end
end
