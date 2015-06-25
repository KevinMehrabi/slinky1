class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :bookmark_id
      t.string :create
      t.string :destroy

      t.timestamps null: false
    end
  end
end
