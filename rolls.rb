puts "Welcome to Ruby Stat-Roller!"

puts "Would you like to roll your stats? (y/n)"
input = gets.chomp

while true
  if input == "y"
    puts ""
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
    break
  elsif input == "n"
    puts "Alright, see you next time!"
    break
  else
    puts "Please type y for yes, or n for no."
    input = gets.chomp
  end
end
