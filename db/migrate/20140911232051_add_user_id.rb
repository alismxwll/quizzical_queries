class AddUserId < ActiveRecord::Migration
  def change
    add_column :questions, :user_id, :integer
    rename_column :questions, :question, :query
  end
end
