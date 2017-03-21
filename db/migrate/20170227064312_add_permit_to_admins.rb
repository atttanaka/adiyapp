class AddPermitToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :permit, :boolean, default: false, null: false
  end
end
