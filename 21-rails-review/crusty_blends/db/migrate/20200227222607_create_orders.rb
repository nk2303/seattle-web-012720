class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :brew_id
      t.integer :customer_id
      t.float :price
    end
  end
end
