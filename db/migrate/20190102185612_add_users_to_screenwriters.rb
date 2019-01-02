class AddUsersToScreenwriters < ActiveRecord::Migration[5.2]
  def change
    Screenwriter.all.each do |screenwriter|
      screenwriter.user = User.first
      screenwriter.save
    end
  end
end
