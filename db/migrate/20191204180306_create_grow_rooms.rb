class CreateGrowRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grow_rooms do |t|
      t.string :light_source
      t.timestamps
    end
  end
end
