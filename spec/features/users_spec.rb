  require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  let(:user) { create(:user) }

  scenario 'New user successfully places an problem' do
    visit root_path

    find('.create').trigger('click')

    find('.signup').trigger('click')

    expect(page).to have_content("Sign up")

    fill_in 'Email', with: 'edil.talantbekov@gmail.com'
    fill_in 'Password', with: 'parol123'
    fill_in 'Password confirmation', with: 'parol123'
    find('.btn-primary').trigger('click')

    expect(page).to have_content("Profile")

    find('.create').trigger('click')
    expect(page).to have_content("Create Problem")

    fill_in 'Title...', with: 'terrible road'
    fill_in 'Description', with: 'fuuuu'

    find('.btn-primary').trigger('click')

    expect(page).to have_content("Problem")
  end

end
