title = "Goonies"
rank = 10

puts " #{title} has a rank of #{rank}"
puts "#{title.upcase} has a rank of #{rank}"
puts "#{title.center(30, "*")}"

hello = "#{title} has a rank of #{rank}"
puts "#{hello.center(50, ".")}"
puts "#{hello.ljust(50, "*")}"