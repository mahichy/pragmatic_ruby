class Movie
  attr_reader :rank
  # attr_writer :title
  attr_accessor :title
  

  def initialize(title, rank = 5)
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



class Playlist
  
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "*" * 30
    puts "#{@name}'s playlist:"

    puts "\n Before watching:"
    puts @movies

    @movies.each do |m|
      number_rolled = roll_die

      case number_rolled
      when 1..2
        m.thums_down
        puts "#{m.title} got a 👎"
      when 3..4
        puts "#{m.title} got skipped"
      else
        m.thums_up
        puts "#{m.title} got a 👍︎"
      end
    end




    puts "\n After watching:"
    puts @movies

  end
end




movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play

playlist_2 = Playlist.new("Fozzie")
playlist_2.add_movie(movie_2)

movie_4 = Movie.new("gremlins", 7)
playlist_2.add_movie(movie_4)
playlist_2.play










# movies = [movie_1, movie_2, movie_3]










# movies.each do |m|
#   m.thums_up
#   puts m
# end



# number_rolled = rand(1..6)

# case number_rolled
# when 1..2
#   movie_1.thums_down
#   puts "#{movie_1.title} got a 👎"
# when 3..4
#   puts  "#{movie_1.title} got skipped"
# else
#   movie_1.thums_up
#   puts "#{movie_1.title} got a 👍︎ "
# end


# number_rolled = 1

# case
# when number_rolled < 3
#   movie_1.thums_down
#   puts "#{movie_1.title} got a 👎"
# when number_rolled < 5
#   puts  "#{movie_1.title} got skipped"
# else
#   movie_1.thums_up
#   puts "#{movie_1.title} got a 👍︎ "
# end


# number_rolled = 5

# if number_rolled < 3
#   movie_1.thums_down
#   puts "#{movie_1.title} got a 👎"
# elsif number_rolled < 5
# puts  "#{movie_1.title} got skipped"
# else
#   movie_1.thums_up
#   puts "#{movie_1.title} got a 👍︎ "
# end







# puts movie_1.title
# movie_1.title = "goonyes"
# puts movie_1.title
# puts movie_1.rank




# puts movie_1
# movie_1.thums_up
# puts movie_1
# movie_1.thums_up
# puts movie_1

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2
# movie_2.thums_down
# puts movie_2
