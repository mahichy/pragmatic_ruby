def emojis(emoji = "🤠", number)
  emoji * number
end

def movie_info(title, rank= 0)
  stars = emojis("⭐" * rank)
  "#{title.capitalize} has a rank of #{rank}: #{stars}"
end

puts movie_info("goonies", 10)
puts movie_info("ghostbusters", 8)

movie_title = "spaider-man"
movie_rank = 7
puts movie_info(movie_title, movie_rank)