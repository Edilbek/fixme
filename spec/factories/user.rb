include ActionDispatch::TestProcess

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password 'parol123'
    password_confirmation 'parol123'
  end
end
