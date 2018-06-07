# -*- encoding : utf-8 -*-
FactoryBot.define do
  factory :problem do
    title { Faker::Lorem.words(2) }
    description { Faker::Lorem.sentence(20) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    images { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')) }
    status {1}
    user_id nil
  end
end
