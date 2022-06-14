class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    belongs_to :user
    has_many :pictures, as: :imageable
    accepts_nested_attributes_for :pictures
end
