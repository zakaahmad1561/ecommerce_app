class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    has_rich_text :description
    belongs_to :user
    has_many :pictures, as: :imageable
    accepts_nested_attributes_for :pictures
    def image_as_thumbnail(p)
        p.variant(resize_to_limit: [900,900]).processed
    end
end
