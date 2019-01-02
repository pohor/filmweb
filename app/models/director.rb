class Director < ApplicationRecord
  has_many :directors_films
  has_many :films, through: :directors_films

  belongs_to :user
end
