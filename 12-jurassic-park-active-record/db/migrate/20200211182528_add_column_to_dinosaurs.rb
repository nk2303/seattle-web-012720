class AddColumnToDinosaurs < ActiveRecord::Migration[5.2]
  def change
    add_column :dinosaurs, :kill_count, :integer
  end
end
