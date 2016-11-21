class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :name
      t.decimal :price
      t.boolean :quantity_based

      t.timestamps
    end
  end
end
