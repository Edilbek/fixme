# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.describe Problem, type: :model do
  # Association test
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:images) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
end
