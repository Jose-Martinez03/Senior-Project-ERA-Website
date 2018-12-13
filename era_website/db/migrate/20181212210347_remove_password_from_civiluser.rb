class RemovePasswordFromCiviluser < ActiveRecord::Migration[5.2]
  def change
    remove_column :civilusers, :passwoord, :string
  end
end
