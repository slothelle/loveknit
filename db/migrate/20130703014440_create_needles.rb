class CreateNeedles < ActiveRecord::Migration
  def up
    create_table :needles do |t|
      t.string :size
    end
  end

  def down
    drop_table :needles
  end
end
