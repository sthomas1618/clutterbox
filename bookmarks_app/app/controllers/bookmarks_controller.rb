class BookmarksController < ApplicationController

  def popular
    @bookmarks = Bookmark.public.order('view_count DESC')
  end

  def show 
    @bookmark = Bookmark.find(params[:id])
    @bookmark.increment(:view_count)
    @bookmark.save
    @taggings = @bookmark.taggings
    @tag  = @bookmark.tags.build
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
    @users = User.all
  end

  def update
    @bookmark = Bookmark.find(params[:id])
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
end