class AddAskedforToResourceitems < ActiveRecord::Migration[5.2]
  def change
    add_column :resourceitems, :askedfor, :string
  end
end
