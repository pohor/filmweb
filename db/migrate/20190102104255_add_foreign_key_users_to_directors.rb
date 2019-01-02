class AddForeignKeyUsersToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_reference :directors, :user
  end
end
