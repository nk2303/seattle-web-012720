class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.string :meat
      t.integer :spicy
      t.integer :zest

      t.timestamps
    end
  end
end
