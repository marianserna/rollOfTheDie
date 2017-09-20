# Now that you have a file setup for your program (roll_die_ten_times.rb), modify it so that it rolls the die ten times. Use a loop to do this.

1.upto(10) do
  # number = Random.rand(7) + 1
  number = (1..7).to_a.sample
  p "The result of your roll is #{number}"
end
