class CreateHarvests < ActiveRecord::Migration[6.0]
  def change
    create_table :harvests do |t|
      t.integer :weight_of_flowers
      t.integer :user_id
      t.integer :cannabis_plant_id
      t.integer :light_source_id
      t.timestamps
    end
  end
end
