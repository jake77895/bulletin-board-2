class UpdateBoardsSchema < ActiveRecord::Migration[7.1]
  def change
    # Remove the `integer` column
    remove_column :boards, :integer, :string

    # Change the `user_id` column type to integer with a USING clause
    change_column :boards, :user_id, 'integer USING user_id::integer'
  end
end
