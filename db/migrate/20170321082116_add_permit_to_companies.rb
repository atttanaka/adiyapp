class AddPermitToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :permit, :boolean, default: false, null: false
  end
end
