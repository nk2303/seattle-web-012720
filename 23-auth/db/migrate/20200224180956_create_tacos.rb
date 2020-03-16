class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.string :meat
      t.integer :zest
      t.integer :spicy

      t.timestamps
    end
  end
end
