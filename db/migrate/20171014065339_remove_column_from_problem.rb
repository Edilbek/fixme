class RemoveColumnFromProblem < ActiveRecord::Migration[5.1]
  def change
    remove_column :problems, :location
  end
end
