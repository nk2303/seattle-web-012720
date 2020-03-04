class AddColumnToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :truck_id, :integer
  end
end
