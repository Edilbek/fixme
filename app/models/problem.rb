# -*- encoding : utf-8 -*-
class Problem < ApplicationRecord
  enum status: {
    unresolved: 0,
    in_progress: 1,
    resolved: 2
  }

  enum district: {
    unknown: 0,
    leninskiy: 1,
    oktyabrskiy: 2,
    pervomayskiy: 3,
    sverdlovskiy: 4
  }

  mount_uploaders :images, ImageUploader
  serialize :images, JSON # If you use SQLite, add this line.

  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  validates :title, presence: true, length: {minimum: 5, maximum: 35}
  validates :description, presence: true
  validates :district, presence: true
  validates :images, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
