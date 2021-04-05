class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :index]

  def index
    @bookmarks = @list.bookmarks
  end

  def show

  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list.bookmark = @bookmark
    if @bookmark.save
      redirect_to bookmark_path(@list, @bookmark)
    else
      render 'new'
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
