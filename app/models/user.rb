class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :films
  has_many :reviews
  has_many :directors
  has_many :genres
  has_many :screenwriters

  def admin?
    admin
  end

end
