class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
end
