class AddNameToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :name, :string
    add_index :admins, :name, unique: true
  end
end
