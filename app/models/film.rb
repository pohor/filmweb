class Film < ApplicationRecord
  has_many :genres_films
  has_many :genres, through: :genres_films

  has_many :directors_films
  has_many :directors, through: :directors_films

  has_many :screenwriters_films
  has_many :screenwriters, through: :screenwriters_films

  belongs_to :user
end
