class CreateBoroughsAgain < ActiveRecord::Migration[6.0]
  def change
    create_table :boroughs do |t|
      t.string :name, null: false
      t.string :designation, null: false
      t.integer :population, null: false
      t.string :website, null: false

      t.timestamps
    end
  end
end
