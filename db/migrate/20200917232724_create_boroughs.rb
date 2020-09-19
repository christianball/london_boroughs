class CreateBoroughs < ActiveRecord::Migration[6.0]
  def change
    create_table :boroughs do |t|
      t.string :name
      t.string :designation
      t.integer :population
      t.string :website

      t.timestamps
    end
  end
end
