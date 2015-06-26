class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :bookmarks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
