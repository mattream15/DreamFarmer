class CreateCannabisPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :cannabis_plants do |t|
      t.string :cannabis_species
      t.string :variety_name
      t.integer :number_of_seeds
      t.boolean :ready_to_harvest, :default => false
      t.integer :grow_room_id

      t.timestamps
    end
  end
end
