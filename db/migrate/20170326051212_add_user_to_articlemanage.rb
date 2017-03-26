class AddUserToArticlemanage < ActiveRecord::Migration[5.0]
  def change
    add_reference :articlemanages, :user, foreign_key: true
  end
end
