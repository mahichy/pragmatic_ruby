require "minitest/autorun"
require_relative "../../lib/flicks/movie"

class MovieTest < Minitest::Test

  def test_has_a_capitalize_title
    movie = Movie.new("goonies", 10)

    assert_equal "Goonies", movie.title
  end

  def test_has_an_initial_rank
    movie = Movie.new("goonies", 10)

    assert_equal 10, movie.rank
  end

  def test_has_a_string_representation
    movie = Movie.new("goonies", 10)

    assert_equal "Goonies has a rank of 10", movie.to_s
  end

  def test_thums_up_increases
    movie = Movie.new("goonies", 10)

    movie.thums_up
    assert_equal 11, movie.rank
  end

  def test_thums_down_decreases
    movie = Movie.new("goonies", 10)

    movie.thums_down
    assert_equal 9, movie.rank
  end


end