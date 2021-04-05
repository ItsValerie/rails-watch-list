# Destroying existing objects
puts "Deleting existing objects"
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

# Creating Movies
puts "Creating Movies"
wonder_woman = Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
redemption = Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
titanic = Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
oceans_eight = Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

# Creating Lists
puts "Creating Lists"
list_one = List.create!(name: "Top rated")
list_two = List.create!(name: "Latest Release")
list_three = List.create!(name: "Oldies")

# Creating Bookmarks
puts "Creating Bookmarks"
bookmark_one = Bookmark.create!(comment: "Can highly recommend", movie: titanic, list: list_one)
bookmark_two = Bookmark.create!(comment: "Can highly recommend", movie: redemption, list: list_two)
bookmark_three = Bookmark.create!(comment: "Can highly recommend", movie: wonder_woman, list: list_three)

puts "All done!"
