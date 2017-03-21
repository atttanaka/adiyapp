class AddPermitToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :permit, :boolean, default: false, null: false
  end
end
