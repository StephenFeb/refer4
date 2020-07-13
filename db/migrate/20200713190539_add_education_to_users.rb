class AddEducationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :education, :text
  end
end
