scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = []

high_scores = scores.detect { |s| s > 90 }

puts high_scores

scores_doubled = scores.map { |score| score * 2 }

puts scores_doubled

total = scores.reduce(0) { |t, i| t += i }
# OR
# total = scores.reduce(0, :+)
puts total

even, odd = scores.partition { |n| n.even? }
pp even, odd