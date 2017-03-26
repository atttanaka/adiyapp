class Articlemanage < ApplicationRecord
    has_many :articles, dependent: :destroy

    validates :title, presence: true, length: { maximum: 255 }

end
