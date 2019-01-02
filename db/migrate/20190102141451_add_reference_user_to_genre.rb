class AddReferenceUserToGenre < ActiveRecord::Migration[5.2]
  def change
    add_reference :genres, :user
  end
end
