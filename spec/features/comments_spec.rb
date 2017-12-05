# require 'rails_helper'
#
# RSpec.feature 'Comments', type: :feature do
#   let(:user) { create(:user) }
#
#   scenario 'New user successfully place an comment' do
#     visit root_path
#
#     find('.create').trigger('click')
#
#     find('.signup').trigger('click')
#
#     expect(page).to have_content("Регистрация")
#
#     fill_in 'Email', with: 'edil.talantbekov@gmail.com'
#     fill_in 'Password', with: 'parol123'
#     fill_in 'Password confirmation', with: 'parol123'
#     find('.btn-primary').trigger('click')
#
#     expect(page).to have_content("Профиль")
#
#     find('.create').trigger('click')
#     expect(page).to have_content("Создать проблему")
#
#     fill_in 'Title...', with: 'terrible road'
#     fill_in 'Description...', with: 'fuuuu'
#
#     find('.btn-primary').trigger('click')
#
#     expect(page).to have_content("Название")
#
#     fill_in '.comment_content', with: "Yeh, it's cool!"
#     find('.create_comment_btn').trigger('click')
#
#     expect(page).to have_content("Название")
#
#   end
# end
