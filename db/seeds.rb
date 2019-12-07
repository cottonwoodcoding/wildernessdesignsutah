test_user = User.find_or_create_by(email: 'test@test.com') do |user|
  user.password = 'password'
end

puts 'Test User Seeded'