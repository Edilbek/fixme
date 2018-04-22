Admin.create!(email: 'admin@admin', password: 'parol123', password_confirmation: 'parol123')

def seed_image(id)
  File.open(File.join(Rails.root, "/public/seeds/problem_#{id}.png"))
end

30.times do |pr|
  problem = Problem.create!(
    title: Faker::Lorem.characters(10),
    description: Faker::Lorem.sentence(60),
    user_id: 1,
    latitude: rand(42.85..42.89),
    longitude: rand(74.5..74.64),
    status: rand(0..2),
    images: [ seed_image(rand(1..2)) ]
  )
end
