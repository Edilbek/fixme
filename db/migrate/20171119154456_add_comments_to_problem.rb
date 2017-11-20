class AddCommentsToProblem < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :comment, :text
  end
end
