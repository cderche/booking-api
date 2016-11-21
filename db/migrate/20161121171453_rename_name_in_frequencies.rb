class RenameNameInFrequencies < ActiveRecord::Migration[5.0]
  def change
    rename_column :frequencies, :t_name, :name
  end
end
