class Review < ApplicationRecord
  validates :comment, presence: true, length: 3..600
  validates :rate, presence: true

  belongs_to :film
  belongs_to :user
end
