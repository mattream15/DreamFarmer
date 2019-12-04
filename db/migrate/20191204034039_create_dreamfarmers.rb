class CreateDreamfarmers < ActiveRecord::Migration[6.0]
  def change
    create_table :dreamfarmers do |t|
      t.string :ready_to_harvest
      t.boolean :complete

      t.timestamps
    end
  end
end
