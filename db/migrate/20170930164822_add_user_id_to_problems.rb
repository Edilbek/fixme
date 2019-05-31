# -*- encoding : utf-8 -*-
class AddUserIdToProblems < ActiveRecord::Migration[5.1]
  def self.up
    add_column :problems, :user_id, :integer
    change_column :problems, :user_id, :integer, null: false
  end
  
  def self.down
    remove_column :problems, :user_id
  end
end
