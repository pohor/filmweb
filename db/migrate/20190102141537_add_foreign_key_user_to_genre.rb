class AddForeignKeyUserToGenre < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :genres, :users
  end
end
