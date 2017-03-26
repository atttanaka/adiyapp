class Articlemanage < ApplicationRecord
    has_many :articles, dependent: :destroy

    validates :title, presence: true, length: { maximum: 255 }
    validates :thumb_image, presence: true, length: { maximum: 255 }

    has_attached_file :thumb_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :thumb_image, content_type: /\Aimage\/.*\z/
end
