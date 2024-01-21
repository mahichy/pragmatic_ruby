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