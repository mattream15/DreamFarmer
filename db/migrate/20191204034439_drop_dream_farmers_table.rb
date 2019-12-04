class DropDreamFarmersTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :dreamfarmers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
