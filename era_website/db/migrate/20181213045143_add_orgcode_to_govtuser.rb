class AddOrgcodeToGovtuser < ActiveRecord::Migration[5.2]
  def change
    add_column :govtusers, :orgcode, :string
  end
end
