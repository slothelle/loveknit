class CreateGarments < ActiveRecord::Migration
  def up
    create_table :garments do |t|
      t.string :category
    end
  end

  def down
    drop_table :garments
  end
end
