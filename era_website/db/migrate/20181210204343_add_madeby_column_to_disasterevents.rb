class AddMadebyColumnToDisasterevents < ActiveRecord::Migration[5.2]
  def change
    add_column :disasterevents, :madeby, :string
  end
end
