class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :location
      t.string :name

      t.timestamps
    end
  end
end
