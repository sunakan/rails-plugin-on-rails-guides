class CreateWickwalls < ActiveRecord::Migration[5.2]
  def change
    create_table :wickwalls do |t|
      t.string :last_squawk

      t.timestamps
    end
  end
end