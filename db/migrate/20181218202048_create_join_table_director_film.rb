class CreateJoinTableDirectorFilm < ActiveRecord::Migration[5.2]
  def change
    create_join_table :directors, :films do |t|
      t.index [:director_id, :film_id]
      t.index [:film_id, :director_id]
    end
  end
end
