class AddAmountToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :amount, :integer
  end
end
