class DeleteGarmentColumns < ActiveRecord::Migration
  def up
    remove_column :patterns, :garment_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
