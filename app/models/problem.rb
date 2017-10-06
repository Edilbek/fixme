class Problem < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true

  geocoded_by :address
  after_validation :geocode
end
