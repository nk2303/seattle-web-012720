class RenameOrchestraMembersToorchestramembers < ActiveRecord::Migration[6.0]
  def change
    rename_table :orchestra_members, :orchestramembers

  end
end
