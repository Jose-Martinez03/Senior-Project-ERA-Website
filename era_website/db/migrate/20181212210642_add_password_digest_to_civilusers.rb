class AddPasswordDigestToCivilusers < ActiveRecord::Migration[5.2]
  def change
    add_column :civilusers, :password_digest, :string
  end
end
