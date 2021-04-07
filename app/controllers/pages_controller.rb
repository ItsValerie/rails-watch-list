class PagesController < ApplicationController

  def home
    @movies = Movie.all
    @lists = List.all
    @bookmarks = Bookmark.all
  end


end
