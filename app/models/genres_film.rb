class GenresFilm < ApplicationRecord
  belongs_to :film
  belongs_to :genre

end
