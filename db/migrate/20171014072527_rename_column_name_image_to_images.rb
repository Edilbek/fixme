# -*- encoding : utf-8 -*-
class RenameColumnNameImageToImages < ActiveRecord::Migration[5.1]
  def change
    rename_column :problems, :image, :images
  end
end
