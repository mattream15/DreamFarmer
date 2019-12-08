class CreatePhs < ActiveRecord::Migration[6.0]
  def change
    create_table :phs do |t|
      t.integer :measure
    end
  end
end
