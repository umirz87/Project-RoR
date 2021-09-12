class RemoveCommentableTypeFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :commentable_type, :string
  end
end
