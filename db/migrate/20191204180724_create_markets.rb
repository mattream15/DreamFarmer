class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :part_of_plant
      t.integer :amount_for_sale
      t.integer :asking_price
      t.timestamps
    end
  end
end
