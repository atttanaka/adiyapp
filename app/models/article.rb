class Article < ApplicationRecord
  belongs_to :articlemanage
  validates :articlemanage_id, presence: true

  validates :content_text, presence: true, length: { maximum: 1000 }

  has_attached_file :article_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :article_image, content_type: /\Aimage\/.*\z/
end
