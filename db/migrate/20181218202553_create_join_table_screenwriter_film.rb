class CreateJoinTableScreenwriterFilm < ActiveRecord::Migration[5.2]
  def change
    create_join_table :screenwriters, :films do |t|
      t.index [:screenwriter_id, :film_id]
      t.index [:film_id, :screenwriter_id]
    end
  end
end
