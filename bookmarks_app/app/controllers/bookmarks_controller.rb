class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def index
    @bookmarks = Bookmark.all
  end

  def show 
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    if (@bookmark.save)
      flash[:success] = "Bookmarked!"
      redirect_to @bookmark
    else
      render 'new'
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    if @bookmark.update_attributes(params[:bookmark])
      flash[:success] = "Updated Bookmark"
      redirect_to @bookmark
    else
      render 'edit'
    end
  end

  def destroy
    flash[:success] = "Removed Bookmark"
    redirect_to user_path(1)
  end

  def all_bookmarks
    [
      {
        url:         "http://www.yahoo.com",
        domain:      "yahoo.com",
        title:       "I don't know why I bookmarked this",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        rating:      1,
        tags:        "News, Kickstarter, Startups, Technology"
      },
      {
        url:         "http://www.github.com",
        domain:      "github.com",
        title:       "My favorite git website",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        rating:      4,
        tags:        "News, Kickstarter, Startups, Technology"
      },
      {
        url:         "http://www.google.com",
        domain:      "google.com",
        title:       "Google: a wonderful search engine",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        rating:      5,
        tags:        "News, Kickstarter, Startups, Technology"
      },
      {
        url:         "http://blogs.reuters.com/felix-salmon/2012/09/18/kickstarter-vaporware-of-the-day-lifx-edition/",
        domain:      "blogs.reuters.com",
        title:       "Some article on kickstarter",
        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        rating:      3,
        tags:       "News, Kickstarter, Startups, Technology"
      }
    ]
  end
end