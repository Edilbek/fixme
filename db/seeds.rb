# Admin.create!(email: 'admin@admin', password: 'parol123', password_confirmation: 'parol123')

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(id)
  File.open(File.join(Rails.root, "/public/seeds/problem_#{id}.png"))
end

20.times do |pr|
  problem = Problem.create!(
    title: Faker::Name.title,
    description: Faker::Lorem.sentence(100),
    user_id: 1,
    latitude: rand(43.3...50.5),
    longitude: rand(65.3...76.5),
    status: rand(1..2),
    images: [ seed_image(rand(1..2)) ]
  )
  # problem.create!(images: seed_image(rand(1..2)))
end
