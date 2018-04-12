# -*- encoding : utf-8 -*-
require 'rails_helper'

# Test suite for the Comment model
RSpec.describe Comment, type: :model do
  # Association test
  # ensure an item record belongs to a single problem record
  it { should belong_to(:problem) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:content) }
end
