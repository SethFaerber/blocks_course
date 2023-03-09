require 'timeout'
require 'open-uri'
Timeout.timeout(2.0) do
  sleep 1.0
  puts "That was refreshing..."
end

def try_with_timeout(timeout_duration)
  begin
    Timeout.timeout(timeout_duration) do
      yield
    end
  rescue Timeout::Error
    # handle it however you like!
    puts "Took too long!"
  end
end

web_page = try_with_timeout(1.0) do
  URI.open("http://example.com/")
end

puts web_page.read

try_with_timeout(2.0) do
  sleep 3.0
  puts "Yawn..."
end
