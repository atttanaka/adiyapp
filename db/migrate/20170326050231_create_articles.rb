class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :content_image
      t.text :content_text
      t.integer :content_number
      t.references :articlemanage, foreign_key: true

      t.timestamps
    end
  end
end
