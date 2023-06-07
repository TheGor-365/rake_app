namespace :users do
  desc 'Creates 5 users'
  task :create => :environment do
    5.times do |user_number|
      puts "Task #{user_number + 1} started..."
      User.create(name: "Alice #{user_number + 1}")
    end
  end

  desc 'Updates user name'
  task :update, [:name] => :environment do |rake_task, arguments|
    first_name = arguments[:name]
    puts "Changing user name to #{arguments[:name]}"
    User.find(2).update(name: first_name)
  end

  desc 'Updates user name'
  task :name_to => :environment do |rake_task, arguments|
    first_name = ARGV[1]
    puts "Changing user name to #{arguments[:name]}"
    User.find(3).update(name: first_name)
  end
end
