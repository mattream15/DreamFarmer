class CreateCannabisPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :cannabis_plants do |t|
      t.string :strain
      t.integer :number_of_seeds
      t.string :growing_method
      t.string :nutrients
      t.integer :ph
      t.integer :user_id
      t.integer :grow_room_id

      t.timestamps
    end
  end
end
