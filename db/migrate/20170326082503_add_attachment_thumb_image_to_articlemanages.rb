class AddAttachmentThumbImageToArticlemanages < ActiveRecord::Migration
  def self.up
    change_table :articlemanages do |t|
      t.attachment :thumb_image
    end
  end

  def self.down
    remove_attachment :articlemanages, :thumb_image
  end
end
