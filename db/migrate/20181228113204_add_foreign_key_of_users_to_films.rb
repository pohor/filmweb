class AddForeignKeyOfUsersToFilms < ActiveRecord::Migration[5.2]
  def change
    add_reference :films, :user
  end
end
