class AddPermitToArticlemanages < ActiveRecord::Migration[5.0]
  def change
    add_column :articlemanages, :permit, :boolean, default: false, null: false
  end
end
