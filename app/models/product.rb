class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    has_rich_text :description
    belongs_to :user
    has_many :pictures, as: :imageable
    accepts_nested_attributes_for :pictures
end
