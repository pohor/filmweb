class AddForeignKeyUsersToDirectorsSecond < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :directors, :users
  end
end
