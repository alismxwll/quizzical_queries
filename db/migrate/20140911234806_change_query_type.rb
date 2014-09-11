class ChangeQueryType < ActiveRecord::Migration
  def change
    remove_column :questions, :query
    add_column :questions, :query, :text
  end
end
