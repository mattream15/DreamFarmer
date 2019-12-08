class CreateGrowingMethods < ActiveRecord::Migration[6.0]
  def change
    create_table :growing_methods do |t|
      t.string :name
    end
  end
end
