class CreateTableVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table(:visitors) do |t|
      t.string :name
      t.integer :age
      t.float :height
    end
  end
end
