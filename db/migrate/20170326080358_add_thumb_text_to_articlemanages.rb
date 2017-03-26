class AddThumbTextToArticlemanages < ActiveRecord::Migration[5.0]
  def change
    add_column :articlemanages, :thumb_text, :text
  end
end
