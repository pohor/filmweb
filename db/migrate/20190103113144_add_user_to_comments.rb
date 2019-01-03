class AddUserToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :user
    add_foreign_key :reviews, :users
  end
end
