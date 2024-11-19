class UpdatePostsSchema < ActiveRecord::Migration[7.1]
  def change
    # Remove the `integers` column
    remove_column :posts, :integers, :string

    # Change the `user_id` column type to integer
    change_column :posts, :user_id, 'integer USING user_id::integer'
  end
end
