class Movie
  attr_reader :rank
  # attr_writer :title
  attr_accessor :title
  

  def initialize(title, rank)
    @title = title.capitalize
    @rank = rank
  end

  def thums_up
    @rank += 1
  end
  
  def thums_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank #{@rank}"
  end
end







movie_1 = Movie.new("goonies", 10)
puts movie_1.title
movie_1.title = "goonyes"
puts movie_1.title
puts movie_1.rank




# puts movie_1
# movie_1.thums_up
# puts movie_1
# movie_1.thums_up
# puts movie_1

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2
# movie_2.thums_down
# puts movie_2
