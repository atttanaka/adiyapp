class CreateArticlemanages < ActiveRecord::Migration[5.0]
  def change
    create_table :articlemanages do |t|
      t.text :title

      t.timestamps
    end
  end
end
