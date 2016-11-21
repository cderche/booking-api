class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :code
      t.string :name
      t.decimal :price
      t.boolean :hourly
      t.integer :resource_minimum
      t.integer :resource_maximum
      t.integer :hours_minimum
      t.integer :hours_maximum

      t.timestamps
    end
  end
end
