class CreatePatterns < ActiveRecord::Migration
  def up
    create_table :patterns do |t|
      t.string :name
      t.integer :user_id
      t.integer :needle_id
      t.integer :garment_id
      t.integer :gauge_row_inch
      t.integer :gauge_per_inch
      t.integer :hat_circumference
      t.timestamps
    end
  end

  def down
    drop_table :patterns
  end
end
