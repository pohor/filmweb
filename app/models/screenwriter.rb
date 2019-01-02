class Screenwriter < ApplicationRecord
  validates :name, presence: true, length: 3..50

  has_many :screenwriters_films
  has_many :films, through: :screenwriters_films

  belongs_to :user
end
