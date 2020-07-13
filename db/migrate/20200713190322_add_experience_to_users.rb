class AddExperienceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :experience, :text
  end
end
