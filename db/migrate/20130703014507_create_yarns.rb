class CreateYarns < ActiveRecord::Migration
  def up
    create_table :yarns do |t|
      t.string :brand
      t.integer :yarn_weight_id
      t.string :color
      t.integer :yards
    end
  end

  def down
    drop_table :yarns
  end
end
