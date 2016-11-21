class CreatePricingParameters < ActiveRecord::Migration[5.0]
  def change
    create_table :pricing_parameters do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity_minimum
      t.integer :quantity_maximum

      t.timestamps
    end
  end
end
