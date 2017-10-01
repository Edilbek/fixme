class Problem < ApplicationRecord
  belongs_to :user, optional: true
end
