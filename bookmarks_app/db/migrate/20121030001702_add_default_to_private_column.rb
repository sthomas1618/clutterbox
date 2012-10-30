class AddDefaultToPrivateColumn < ActiveRecord::Migration
  def self.up
    change_column_default(:bookmarks, :private, false)
  end
end
