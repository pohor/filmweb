class Film < ApplicationRecord
  has_many :genres_films
  has_many :genres, through: :genres_films

  has_many :directors_films
  has_many :directors, through: :directors_films
end
