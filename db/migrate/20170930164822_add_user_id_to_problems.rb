class AddUserIdToProblems < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :user_id, :integer, null: false
    add_index :problems, :user_id
  end
end
