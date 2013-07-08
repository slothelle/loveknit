class AddColumnsPatterns < ActiveRecord::Migration
  def up
    add_column :patterns, :hat_pattern_id, :integer, references: :hat_patterns
  end

  def down
    remove_column :patterns, :hat_pattern_id
  end
end
