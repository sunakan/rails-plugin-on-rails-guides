class CreateHickwalls < ActiveRecord::Migration[5.2]
  def change
    create_table :hickwalls do |t|
      t.string :last_squawk

      t.timestamps
    end
  end
end
