class AddUsertypeToGovtusers < ActiveRecord::Migration[5.2]
  def change
    add_column :govtusers, :usertype, :string
  end
end
