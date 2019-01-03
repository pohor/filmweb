class Origin < ApplicationRecord
  validates :name, presence: true, length: 3..50
  validates :description, presence: true, length: 3..500

  has_many :origins_films
  has_many :films, through: :origins_films

end
