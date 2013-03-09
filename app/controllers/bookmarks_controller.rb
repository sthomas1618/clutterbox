class BookmarksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update, :destroy]

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
    @bookmark = @current_user.bookmarks.build(params[:bookmark])
    if (@bookmark.save)
      flash[:success] = "Bookmarked!"
      redirect_to @bookmark
    else
      render 'new'
    end
  end

  def edit
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
    @bookmark.destroy
    flash[:success] = "Removed Bookmark"
    redirect_to user_path(@current_user)
  end
  
  private

  def correct_user 
    @bookmark = @current_user.bookmarks.find_by_id(params[:id])
    redirect_to root_url if @bookmark.nil?
  end
end