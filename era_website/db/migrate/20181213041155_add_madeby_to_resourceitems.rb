class AddMadebyToResourceitems < ActiveRecord::Migration[5.2]
  def change
    add_column :resourceitems, :madeby, :string
  end
end
