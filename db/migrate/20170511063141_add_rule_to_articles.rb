class AddRuleToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :rule, :boolean, default: true, null: false
  end
end
