class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :location
      t.string :description
      t.string :images
      
      t.timestamps
    end
  end
end
