class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese japanese italian french belgian)

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
