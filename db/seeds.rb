require 'open-uri'
require 'json'

# Destroying existing objects
puts "Deleting existing objects"
Bookmark.destroy_all
Movie.destroy_all

# Creating Movies
url = "http://tmdb.lewagon.com/movie/top_rated"
10.times do |i|
  puts "Importing movies from page #{i + 1}"
  movies = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    base_poster_url = "https://image.tmdb.org/t/p/original"
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['backdrop_path']}",
      rating: movie['vote_average']
    )
  end
end
puts "Movies created"
# Creating Lists
# puts "Creating Lists"
# list_one = List.create!(name: "Top rated")
# list_two = List.create!(name: "Latest Release")
# list_three = List.create!(name: "Oldies")

# # Creating Bookmarks
# puts "Creating Bookmarks"
# bookmark_one = Bookmark.create!(comment: "Can highly recommend", movie: titanic, list: list_one)
# bookmark_two = Bookmark.create!(comment: "Can highly recommend", movie: redemption, list: list_two)
# bookmark_three = Bookmark.create!(comment: "Can highly recommend", movie: wonder_woman, list: list_three)

puts "All done!"
