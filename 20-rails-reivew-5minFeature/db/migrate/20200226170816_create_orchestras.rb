class CreateOrchestras < ActiveRecord::Migration[6.0]
  def change
    create_table :orchestras do |t|
      t.string :name
      t.string :classification
      t.integer :conductors_id 
      t.timestamps
    end
  end
end
