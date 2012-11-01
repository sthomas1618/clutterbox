class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by_name(params[:id])
    @bookmarks = @tag.bookmarks.public
  end
end