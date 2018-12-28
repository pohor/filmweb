class AddForeignKeyOfUsersToFilmsCorrect < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :films, :users
  end
end
