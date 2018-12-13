class AddCurrstatusToResourceitems < ActiveRecord::Migration[5.2]
  def change
    add_column :resourceitems, :currstatus, :string
  end
end
