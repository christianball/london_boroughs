class DropBoroughs < ActiveRecord::Migration[6.0]
  def change
    drop_table :boroughs
  end
end
