class RenameFrequencyName < ActiveRecord::Migration[5.0]
  def change
    rename_column :frequencies, :name, :t_name
  end
end
