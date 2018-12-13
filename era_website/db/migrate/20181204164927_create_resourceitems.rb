class CreateResourceitems < ActiveRecord::Migration[5.2]

  def change

    create_table :resourceitems do |t|

      t.string :resourcename

      t.text :resourcedescription

      t.integer :quantity

      t.string :city

      t.references :disasterevent, foreign_key: true


      t.timestamps

    end

  end

end
