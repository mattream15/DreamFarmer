class CreateHarvests < ActiveRecord::Migration[6.0]
  def change
    create_table :harvests do |t|
      t.integer :weight_of_flowers
      t.integer :weight_of_leaves
      t.integer :weight_of_roots
      t.integer :weight_of_seeds
      t.integer :weight_of_stalks
      t.integer :user_id
      t.integer :cannabis_plant_id
      t.integer :grow_room_id
      t.timestamps
    end
  end
end
