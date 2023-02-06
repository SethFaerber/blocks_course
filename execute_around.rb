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