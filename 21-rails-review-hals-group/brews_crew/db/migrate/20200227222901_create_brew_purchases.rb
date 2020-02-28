class CreateBrewPurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :brew_purchases do |t|
      t.integer :brew_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
