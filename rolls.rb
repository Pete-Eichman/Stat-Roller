6.times do
  roll_1 = rand(6)+1
  roll_2 = rand(6)+1
  roll_3 = rand(6)+1
  roll_4 = rand(6)+1

  rolls = "#{roll_1}, #{roll_2}, #{roll_3}, #{roll_4}".split(", ")
  puts "The rolls: #{rolls}"
  rolls.sort! && rolls.shift
  puts "Top 3 rolls: #{rolls}"

  total = 0
  rolls.each do |roll|
    total += roll.to_i
  end
  puts "Total Points for this Stat: #{total}"
  puts ""
end
