# -*- encoding : utf-8 -*-
class RemoveImagesColumnFromProblem < ActiveRecord::Migration[5.1]
  def change
    remove_column :problems, :images
  end
end
