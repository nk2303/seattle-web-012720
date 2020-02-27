class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.integer :spicy
      t.integer :zest
    end
  end
end

# link_to taco_path(1)
# button_to 
