class Film < ApplicationRecord
  validates :title, presence: true, length: 3..50
  validates :description, presence: true, length: 3..2000
  validates :duration, presence: true, numericality: { greater_than: 1, less_than: 500 }
  validates :genres, presence: true

  has_many :genres_films
  has_many :genres, through: :genres_films

  has_many :directors_films
  has_many :directors, through: :directors_films

  has_many :origins_films
  has_many :origins, through: :origins_films

  has_many :screenwriters_films
  has_many :screenwriters, through: :screenwriters_films

  belongs_to :user

  has_many :reviews, dependent: :destroy

  def avg_rate
    sum = 0
    if reviews.count == 0
      return 'No rates yet'
    else
      reviews.each do |review|
        sum += review.rate
      end
      return (sum / reviews.count).to_f
    end
  end

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%").order('id DESC')
    else
      all
    end
  end

end
