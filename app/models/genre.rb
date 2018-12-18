class Genre < ApplicationRecord
  has_many :genres_films
  has_many :films, through: :categories_products
end
