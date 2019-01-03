class CreateJoinTableOriginFilm < ActiveRecord::Migration[5.2]
  def change
    create_join_table :origins, :films do |t|
      t.index [:origin_id, :film_id]
      t.index [:film_id, :origin_id]
    end
  end
end
