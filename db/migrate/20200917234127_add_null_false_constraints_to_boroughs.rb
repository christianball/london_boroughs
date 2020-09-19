class AddNullFalseConstraintsToBoroughs < ActiveRecord::Migration[6.0]
  def up
    change_column_default :boroughs, :name, from: true, to: false
    change_column_default :boroughs, :designation, from: true, to: false
    change_column_default :boroughs, :population, from: true, to: false
    change_column_default :boroughs, :website, from: true, to: false
  end
end
