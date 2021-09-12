class RemoveCommentableIdFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :commentable_id, :integer
  end
end
