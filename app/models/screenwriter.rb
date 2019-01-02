class Screenwriter < ApplicationRecord
  has_many :screenwriters_films
  has_many :films, through: :screenwriters_films

  belongs_to :user
end
