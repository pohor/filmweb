class CreateJoinTableGenreFilm < ActiveRecord::Migration[5.2]
  def change
    create_join_table :genres, :films do |t|
      t.index [:genre_id, :film_id]
      t.index [:film_id, :genre_id]
    end
  end
end
