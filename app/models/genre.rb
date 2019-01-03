class Genre < ApplicationRecord
  validates :name, presence: true, length: 2..50

  has_many :genres_films
  has_many :films, through: :categories_products

  belongs_to :user
end
