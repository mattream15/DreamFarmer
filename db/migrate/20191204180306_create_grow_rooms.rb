class CreateGrowRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grow_rooms do |t|
      t.string :name
      t.string :growing_style
      t.string :type_of_soil
      t.string :type_of_medium
      t.string :nutrients
      t.integer :ph
      t.string :type_of_light
      t.integer :room_temperature
      t.integer :relative_humidity
      t.timestamps
    end
  end
end
