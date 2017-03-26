class AddImagepositionToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :imageposition, :boolean, default: false, null: false
  end
end
