# Figure out the odds of each total coming up
# The odds of 2 coming up are 3%

dice1 = (1..6).to_a
permutations = dice1.repeated_permutation(2).to_a
totals = []

permutations.each do |permutation|
  total = permutation[0] + permutation[1]
  # puts "Permutation #{permutation} total is #{total}"
  totals << total
end

2.upto(12) do |number|
  count = totals.count(number)

  percentage = ((count.to_f / totals.length) * 100).round(0)
  # puts percentage
  puts "The odds of #{number} coming are #{percentage}%"
end
