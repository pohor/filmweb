class Genre < ApplicationRecord
  validates :name, presence: true, length: 2..50

  has_many :genres_films
  has_many :films, through: :genres_films

  belongs_to :user
end
