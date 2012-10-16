class BookmarksController < ApplicationController

  def index
    @bookmarks = all_bookmarks
  end

  def show 
    @bookmarks = all_bookmarks[params[:id].to_i]
  end

  def new
    
  end

  def create
    flash[:success] = "Bookmarked!"
    redirect_to bookmark_path(1)
  end

  def edit

  end

  def update
    flash[:success] = "Updated Bookmark"
    redirect_to bookmark_path(1)
  end

  def destroy
    flash[:success] = "Removed Bookmark."
    redirect_to user_path(1)
  end

  def all_bookmarks
    [
      {
        url:         "http://www.yahoo.com",
        domain:      "yahoo.com",
        title:       "I don't know why I bookmarked this",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        raiting:     1
      },
      {
        url:         "http://www.github.com",
        domain:      "github.com",
        title:       "My favorite git website",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        raiting:     4
      },
      {
        url:         "http://www.google.com",
        domain:      "google.com",
        title:       "Google: a wonderful search engine",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        raiting:     5
      },
      {
        url:         "http://blogs.reuters.com/felix-salmon/2012/09/18/kickstarter-vaporware-of-the-day-lifx-edition/",
        domain:      "blogs.reuters.com",
        title:       "Some article on kickstarter",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        raiting:     3
      }
    ]
  end
end