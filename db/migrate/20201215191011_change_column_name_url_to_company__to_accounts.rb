class ChangeColumnNameUrlToCompanyToAccounts < ActiveRecord::Migration[6.0]
  def change
    rename_column :accounts, :url, :company
  end
end
