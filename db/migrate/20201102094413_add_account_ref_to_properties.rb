class AddAccountRefToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :account_id, :integer
    add_foreign_key :properties, :accounts
  end
end
