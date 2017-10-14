class AddStatusToProblem < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :status, :integer, default: 0
  end
end
