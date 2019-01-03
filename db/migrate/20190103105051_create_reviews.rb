class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :comment
      t.integer :rate
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
