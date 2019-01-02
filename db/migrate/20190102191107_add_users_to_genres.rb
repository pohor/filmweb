class AddUsersToGenres < ActiveRecord::Migration[5.2]
  def change
    Genre.all.each do |genre|
      genre.user = User.first
      genre.save
    end
  end
end
