class Director < ApplicationRecord
  validates :name, presence: true, length: 3..50

  has_many :directors_films
  has_many :films, through: :directors_films

  belongs_to :user
end
