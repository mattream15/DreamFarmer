class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.integer :amount_for_sale
      t.integer :asking_price
      t.integer :cannabis_plant_id
      t.integer :harvest_id
      t.timestamps
    end
  end
end
