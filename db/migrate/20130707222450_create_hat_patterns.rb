class CreateHatPatterns < ActiveRecord::Migration
  def up
    create_table :hat_patterns do |t|
      t.string :title
      t.references :pattern
      t.references :needle
      t.references :yarn_weight
      t.integer :gauge_row_inch
      t.integer :gauge_per_inch
      t.integer :circumference
      t.timestamps
    end
  end

  def down
    drop_table :hat_patterns
  end
end
