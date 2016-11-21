class CreateJoinTableServicesExtrasAndPp < ActiveRecord::Migration[5.0]
  def change
    create_join_table :services, :extras do |t|
      t.index [:service_id, :extra_id]
    end
    create_join_table :services, :pricing_parameters do |t|
      t.index [:service_id, :pp_id]
    end
  end
end
