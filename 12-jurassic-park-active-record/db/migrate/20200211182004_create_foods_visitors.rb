class CreateFoodsVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :foods_visitors do |t|
      t.integer :food_id
      t.integer :visitor_id
    end
  end
end
