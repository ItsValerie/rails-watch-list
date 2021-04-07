class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def index
    @bookmarks = Bookmark.all
  end

  def show

  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # @movie = Movie.find(params[:movie_id])
    @bookmark.movie = @movie
    if @bookmark.save
      redirect_to bookmarks_path, notice: 'Bookmark created'
    else
      render 'lists/show'
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_bookmark

  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

end
