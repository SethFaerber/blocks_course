scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = []

high_scores = scores.detect { |s| s > 90 }

puts high_scores