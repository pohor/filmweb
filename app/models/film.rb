class Film < ApplicationRecord
  validates :title, presence: true, length: 3..50
  validates :duration, presence: true, numericality: { greater_than: 1, less_than: 500 }
  validates :genres, presence: true

  has_many :genres_films
  has_many :genres, through: :genres_films

  has_many :directors_films
  has_many :directors, through: :directors_films

  has_many :screenwriters_films
  has_many :screenwriters, through: :screenwriters_films

  belongs_to :user

  has_many :reviews, dependent: :destroy
end
