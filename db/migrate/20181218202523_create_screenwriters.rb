class CreateScreenwriters < ActiveRecord::Migration[5.2]
  def change
    create_table :screenwriters do |t|
      t.string :name

      t.timestamps
    end
  end
end
