def h1
  puts "<h1>#{yield}</h1>"
end

h1 { "Breaking News!" }

def h2
  puts "<h2>#{yield}</h2>"
end

h2 { "Massive Ruby Discovered" }

def tag(tag)
  print "<#{tag}>"
  print yield
  print "</#{tag}>"
end

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end

# Debugging exercise

def with_debugging
  puts "Got Here!"
  result = yield
  puts "Result was #{result}"
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end

# Expectation

def with_expectation(expectation)
  puts "Running test..."
   if expectation == yield
     puts "Passed!"
   else
     puts "Failed!"
     puts "Expected #{expectation}, but got #{yield}."
   end
end

with_expectation(5) { 2 + 2 }
with_expectation(4) { 2 + 2 }
with_expectation(5) { "Hi there!" }

# yield is fully run every time it is called.

run_times = 0

def run_it
  yield
  yield
  yield
end

run_it { puts run_times += 1 }