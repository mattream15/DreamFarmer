class AddBusinessOperationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :business_operation, :string
  end
end
