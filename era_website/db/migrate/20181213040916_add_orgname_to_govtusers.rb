class AddOrgnameToGovtusers < ActiveRecord::Migration[5.2]
  def change
    add_column :govtusers, :orgname, :string
  end
end
