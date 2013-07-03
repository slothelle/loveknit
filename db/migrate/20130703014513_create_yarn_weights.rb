class CreateYarnWeights < ActiveRecord::Migration
  def up
    create_table :yarn_weights do |t|
      t.string :weight
      t.string :yardage_factor
    end
  end

  def down
    drop_table :yarn_weights
  end
end
