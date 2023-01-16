class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

freq = flyers.select { |flyer| flyer.miles_flown >= 3000 }

infreq = flyers.any? { |flyer| flyer.status == :platinum }

bronze = flyers.detect { |flyer| flyer.status == :bronze }

puts freq
puts infreq
puts bronze

puts "-------------------------------------------"
platinum, sods = flyers.partition { |flyer| flyer.status == :platinum}
puts platinum, sods


print = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})" }
puts print

total_kms_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)
puts "Total km flown: #{total_kms_flown}"