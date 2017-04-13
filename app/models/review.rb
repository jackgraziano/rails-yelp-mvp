class Review < ApplicationRecord
  belongs_to :restaurant
  validates :stars, inclusion: { in: [1,2,3,4,5], allow_nil: false }
  validates :content, presence: true
end
