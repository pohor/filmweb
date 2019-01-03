class Review < ApplicationRecord
  validates :comment, presence: true, length: 3..50
  validates :author, presence: true, length: 3..50
  validates :rate, presence: true

  belongs_to :film
end
