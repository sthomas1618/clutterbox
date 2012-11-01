class TaggingsController < ApplicationController
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @tag = Tag.find_or_create_by_name(params[:tag][:name])
    @tagging = @bookmark.taggings.build(tag_id: @tag.id)
    if @tagging.save
      redirect_to bookmark_path(@bookmark)
    else
      render 'bookmarks/show'
    end
  end

  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy
    redirect_to bookmark_path(params[:bookmark_id])
  end
end