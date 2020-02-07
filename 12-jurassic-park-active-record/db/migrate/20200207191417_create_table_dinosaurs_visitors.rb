class CreateTableDinosaursVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table(:dinosaurs_visitors) do |t|
      t.integer :visitor_id
      t.integer :dinosaur_id
    end
  end
end
