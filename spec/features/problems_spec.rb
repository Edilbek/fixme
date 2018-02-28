# -*- encoding : utf-8 -*-
require 'rails_helper'

RSpec.feature 'Problems', type: :feature do
  let(:user) { create(:user) }

  scenario 'New user successfully places an problem' do
    visit root_path

    find('.create').trigger('click')

    find('.signup').trigger('click')

    expect(page).to have_content("Регистрация")

    fill_in 'Email', with: 'edil.talantbekov@gmail.com'
    fill_in 'Password', with: 'parol123'
    fill_in 'Password confirmation', with: 'parol123'
    find('.btn-primary').trigger('click')

    expect(page).to have_content("Профиль")

    find('.create').trigger('click')
    expect(page).to have_content("Создать проблему")

    fill_in 'Название...', with: 'terrible road'
    fill_in 'Описание...', with: 'fuuuu'
    first('input#problem-lat', visible: false).set("42.874")
    first('input#problem-lng', visible: false).set("74.567")
    page.attach_file("problem[images][]", Rails.root + 'app/assets/images/logo.png', :visible => false)

    find('.btn-primary').trigger('click')

    expect(page).to have_content("Название")

    find('.btn-primary').trigger('click')

    expect(page).to have_content("Название")
  end

  scenario "Registered user successfully places an problem" do
    sign_in user

    visit root_path

    find('.create').trigger('click')
    expect(page).to have_content("Создать проблему")

    fill_in 'Название...', with: 'terrible road'
    fill_in 'Описание...', with: 'fuuuu'
    first('input#problem-lat', visible: false).set("42.874")
    first('input#problem-lng', visible: false).set("74.567")
    page.attach_file("problem[images][]", Rails.root + 'app/assets/images/logo.png', :visible => false)

    find('.btn-primary').trigger('click')

    expect(page).to have_content("Название")

    find('.btn-primary').trigger('click')

    expect(page).to have_content("Название")
  end
end
