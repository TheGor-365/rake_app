namespace :manipulate_files do
  desc "Creates new file in tmp folder"

  task :create do
    touch 'tmp/rake_test_file.rb'
  end
end
