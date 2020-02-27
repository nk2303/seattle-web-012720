class RenameConductorsIdToConductorId < ActiveRecord::Migration[6.0]
  def change
    rename_column :orchestras, :conductors_id, :conductor_id
  end
end
