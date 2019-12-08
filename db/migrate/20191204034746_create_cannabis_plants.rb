class CreateCannabisPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :cannabis_plants do |t|
      t.integer :number_of_seeds
      t.integer :user_id
      t.integer :strain_id
      t.integer :growing_method_id
      t.integer :nutrient_id
      t.integer :ph_id
      t.integer :light_source_id

      t.timestamps
    end
  end
end
