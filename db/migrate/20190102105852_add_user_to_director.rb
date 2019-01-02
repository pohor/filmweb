class AddUserToDirector < ActiveRecord::Migration[5.2]
  def change
    Director.all.each do |director|
      director.user = User.first
      director.save
    end
  end
end
