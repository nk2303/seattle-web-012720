class CreateOrchestraMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :orchestra_members do |t|
      t.integer :member_id
      t.integer :orchestra_id
    end
  end
end
