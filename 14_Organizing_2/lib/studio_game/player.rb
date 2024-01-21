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

if __FILE__ == $0
  player = Player.new("jase")
  puts player.name
end