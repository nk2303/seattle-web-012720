class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.integer :spicy
      t.string :meat
      t.integer :weight
      t.integer :zest

      t.timestamps
    end
  end
end
