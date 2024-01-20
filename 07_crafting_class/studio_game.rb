class Player

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
  def to_s
    "I'm #{@name} with a health of #{@health}"
  end
end

player_1 = Player.new("finn", 60)
puts player_1
player_1.boost
puts player_1

player_2 = Player.new("lucy", 90)
puts player_2
player_2.drain
puts player_2

player_3 = Player.new("jase")
puts player_3
player_3.boost
player_3.boost
puts player_3

player_4 = Player.new("alex", 125)
puts player_4
player_4.drain
player_4.boost
puts player_4




# I'm Finn with a health of 60
# I'm Finn with a health of 75
# I'm Lucy with a health of 90
# I'm Lucy with a health of 80
# I'm Jase with a health of 100
# I'm Jase with a health of 130
# I'm Alex with a health of 125
# I'm Alex with a health of 130