100.times do |user_number|
  User.create(name: "John Doe #{user_number + 1}")
end
