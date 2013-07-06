class UpdatePatterns < ActiveRecord::Migration
  def up
    add_column :patterns, :yarn_weight_id, :integer
  end

  def down
    remove_column :patterns, :yarn_weight_id
  end
end
