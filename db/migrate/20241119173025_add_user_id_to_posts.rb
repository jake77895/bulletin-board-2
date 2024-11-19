class AddUserIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :user_id, :string
    add_column :posts, :integers, :string
  end
end
