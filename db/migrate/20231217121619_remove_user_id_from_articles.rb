class RemoveUserIdFromArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :user_id, :integer
  end
end
