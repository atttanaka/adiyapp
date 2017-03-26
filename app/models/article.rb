class Article < ApplicationRecord
  belongs_to :articlemanage
  validates :articlemanage_id, presence: true

  validates :content_text, length: { maximum: 1000 }
  validates :content_image, length: { maximum: 200 }

end
