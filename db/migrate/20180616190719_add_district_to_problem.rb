class AddDistrictToProblem < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :district, :integer, default: 0
  end
end
