class AddUserReferenceToScreenwriter < ActiveRecord::Migration[5.2]
  def change
    add_reference :screenwriters, :user
  end
end
