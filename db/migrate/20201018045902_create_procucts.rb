class CreateProcucts < ActiveRecord::Migration[5.2]
  def change
    create_table :procucts do |t|
      t.string :name
      t.integer :price
      t.string :vendor

      t.timestamps
    end
  end
end
