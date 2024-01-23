require "minitest/autorun"
require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test

  def test_has_a_capitalize_name
    player = Player.new("finn", 60)

    assert_equal "Finn", player.name
  end

  def test_has_an_initial_health
    player = Player.new("finn", 60)

    assert_equal 60, player.health
  end

  def test_computes_score_as_sum_of_health_and_length_of_name
    player = Player.new("finn", 60)


    assert_equal 64, player.score
  end

  def test_has_a_string_representation
    player = Player.new("finn", 60)

    assert_equal "I'm Finn with a health of 60 and a score of 64", player.to_s
  end

  def test_boost_increases_health
    player = Player.new("finn", 60)

    assert_equal 75, player.boost
  end

  def test_drain_decreases_health_by_10
    player = Player.new("finn", 60)

    assert_equal 50, player.drain
  end

  def test_skips_the_player_if_a_medium_number_is_rolled
    @game.add_player(@player_1)
  
    @game.stub(:roll_die, 3) do
      @game.play
      assert_equal 60, @player_1.health
    end
  end
end
