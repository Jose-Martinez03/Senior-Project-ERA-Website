class CreateCivilusers < ActiveRecord::Migration[5.2]

  def change

    create_table :civilusers do |t|

      t.string :first_name

      t.string :last_name

      t.string :address

      t.string :city

      t.string :state

      t.string :username

      t.string :password
      t.string :email

      t.string :phone_number




      t.timestamps

    end

  end

end