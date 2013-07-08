class DropGarments < ActiveRecord::Migration
  def up
    drop_table :garments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
