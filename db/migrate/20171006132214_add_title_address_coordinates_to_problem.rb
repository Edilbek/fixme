class AddTitleAddressCoordinatesToProblem < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :title, :string
    add_column :problems, :address, :string
    add_column :problems, :latitude, :float
    add_column :problems, :longitude, :float
  end
end
