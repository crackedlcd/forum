class AddForeignIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :topic_id, :integer
  end
end
