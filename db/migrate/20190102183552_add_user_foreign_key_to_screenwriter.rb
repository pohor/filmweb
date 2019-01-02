class AddUserForeignKeyToScreenwriter < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :screenwriters, :users
  end
end
