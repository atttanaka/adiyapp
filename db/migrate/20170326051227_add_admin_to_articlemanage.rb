class AddAdminToArticlemanage < ActiveRecord::Migration[5.0]
  def change
    add_reference :articlemanages, :admin, foreign_key: true
  end
end
