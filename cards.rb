cards = ["Jack", "Queen", "King", "Ace", "Joker"]

# cards.each { |card| puts card.upcase }

# cards.each do |card|
#   puts "#{card.upcase} - #{card.length}"
# end
# shuffled = cards.shuffle
#
# puts shuffled


# cards.shuffle.each do |card|
#   puts "#{card.upcase} - #{card.length}"
# end

# cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }

# cards.each do |card|
#   puts "#{card.upcase} - #{card.length}"
# end

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |k, v|
  puts "#{k} scored a #{v}!"
end