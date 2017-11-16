  require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  let(:user) { create(:user) }

  scenario 'New user successfully places an problem' do
    visit root_path

    find('.create').trigger('click')
  end

end
