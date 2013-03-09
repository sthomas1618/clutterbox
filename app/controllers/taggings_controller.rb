class TaggingsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: [:create, :destroy]

  def create
    @tag = Tag.find_or_create_by_name(params[:tag][:name])
    @tagging = @bookmark.taggings.build(tag_id: @tag.id)
    if @tagging.save
      redirect_to bookmark_path(@bookmark)
    else
      render 'bookmarks/show'
    end
  end

  def destroy
    @tagging = @bookmark.taggings.find(params[:id])
    @tagging.destroy
    redirect_to bookmark_path(params[:bookmark_id])
  end

  private

  def correct_user 
    @bookmark = @current_user.bookmarks.find_by_id(params[:bookmark_id])
    redirect_to root_url if @bookmark.nil?
  end
end