class Problem < ApplicationRecord
  enum status: {
    unresolved: 0,
    in_progress: 1,
    resolved: 2
  }

  mount_uploaders :images, ImageUploader
  serialize :images, JSON # If you use SQLite, add this line.

  belongs_to :user, optional: true

  geocoded_by :address
  after_validation :geocode

end
