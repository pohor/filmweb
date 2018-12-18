class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.date :premiere
      t.integer :duration

      t.timestamps
    end
  end
end
