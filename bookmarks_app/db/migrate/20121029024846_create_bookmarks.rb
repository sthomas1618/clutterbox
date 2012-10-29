class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :user
      t.string     :url
      t.string     :notes
      t.integer    :rating
      t.boolean    :private
      t.integer    :view_count
      t.timestamps
    end
    
    add_index :bookmarks, :user_id
    add_index :bookmarks, :view_count
  end
end
