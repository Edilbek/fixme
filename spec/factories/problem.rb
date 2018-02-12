FactoryBot.define do
  factory :problem do
    title {Faker::Internet.title}
    description {Faker::Internet.description}
    latitude {Faker::Internet.latitude(10)}
    longitude {Faker::Internet.longitude(10)}
    status {Faker::Internet.status(0)}
    user nil
  end
end
