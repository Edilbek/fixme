# -*- encoding : utf-8 -*-
class Comment < ApplicationRecord
  belongs_to :problem
  belongs_to :user

  validates :content, presence: true
end
