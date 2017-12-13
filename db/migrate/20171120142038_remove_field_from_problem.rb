class RemoveFieldFromProblem < ActiveRecord::Migration[5.1]
  def change
    remove_column :problems, :comment
  end
end
