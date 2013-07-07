class RemoveColumnsPatterns < ActiveRecord::Migration
  def up
    remove_column :patterns, :needle_id
    remove_column :patterns, :gauge_row_inch
    remove_column :patterns, :gauge_per_inch
    remove_column :patterns, :hat_circumference
    remove_column :patterns, :yarn_weight_id
    remove_column :patterns, :name
  end

  def down
    add_column :patterns, :needle_id, :integer
    add_column :patterns, :gauge_row_inch, :integer
    add_column :patterns, :gauge_per_inch, :integer
    add_column :patterns, :hat_circumference, :integer
    add_column :patterns, :yarn_weight_id, :integer
    add_column :patterns, :name, :string
  end
end
