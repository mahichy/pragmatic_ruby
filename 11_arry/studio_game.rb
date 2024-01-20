class Player
  attr_reader :name, :health

  def initialize(name, health= 100)
    @name = name.capitalize
    @health = health
  end

  def boost 
    @health += 15
  end

  def drain
    @health -= 10
  end

  def score
    @health += @name.length
  end
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
end

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)

players = [ player_1, player_2, player_3, player_4]
players.pop
player_5 = Player.new("cole", 75)
players.push(player_5)

puts "\n Before Playing:"
puts players


players.each do |player|
  number_rolled = rand(1..6)

  case number_rolled
  when 1..2
    player.drain
    puts "#{player.name} got drained 😩"
  when 3..4
    puts "#{player.name} got skipped"
  else
    player.boost
    puts "#{player.name} got boosted 😁"
  end
end

puts "\n After playing:"
puts players




# players.each do |player|
#   player.boost
#   puts player
# end

# number_rolled = rand(1..6)

# case number_rolled
# when 1..3
#   player_1.drain
#   puts "#{player_1.name} got drained! 😩"
# when 4..5
#   puts "#{player_1.name} got skipped!"
# else
#   player_1.boost
#   puts "#{player_1.name} got boosted 😁"
# end






# number_rolled = rand(1..6)

# if number_rolled < 2
#   player_1.drain
#   puts "#{player_1.name} got drained 😩"
# elsif number_rolled < 5
#   puts "#{player_1.name} got skipped!"
# else
#   player_1.boost
#   puts "#{player_1.name} got boosted 😁"
# end

# player_1 = Player.new("finn", 60)
# puts player_1.name
# puts player_1.health
# puts player_1
# # puts player_1
# # player_1.boost
# # puts player_1

# player_2 = Player.new("lucy", 90)
# puts player_2.name
# puts player_2.health
# # puts player_2
# # player_2.drain
# # puts player_2

# player_3 = Player.new("jase")
# puts player_3.health
# # puts player_3
# # player_3.boost
# # player_3.boost
# # puts player_3

# player_4 = Player.new("alex", 125)
# puts player_4.health
# # puts player_4
# # player_4.drain
# # player_4.boost
# # puts player_4




# # I'm Finn with a health of 60
# # I'm Finn with a health of 75
# # I'm Lucy with a health of 90
# # I'm Lucy with a health of 80
# # I'm Jase with a health of 100
# # I'm Jase with a health of 130
# # I'm Alex with a health of 125
# # I'm Alex with a health of 130