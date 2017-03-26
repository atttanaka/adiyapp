class AddCompanyToArticlemanage < ActiveRecord::Migration[5.0]
  def change
    add_reference :articlemanages, :company, foreign_key: true
  end
end
