class CreateDisasterevents < ActiveRecord::Migration[5.2]
  def change
    create_table :disasterevents do |t|
      t.string :name
      t.string :begindate
      t.string :disaster_type
      t.string :state
      t.text :description

      t.timestamps
    end
  end
end
