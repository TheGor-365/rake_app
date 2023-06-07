namespace :users do
  desc 'Creates 5 users'
  
  task :create => :environment do
    5.times do |user_number|
      puts "Task #{user_number + 1} started..."

      User.create(name: "Alice #{user_number + 1}")
    end
    puts '...done'
  end
end
