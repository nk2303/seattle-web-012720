class AddPriceToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :price, :integer
  end
end
