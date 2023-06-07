namespace :manipulate_files do
  desc "Creates new file in tmp folder"
  task :create do
    touch 'tmp/rake_test_file.rb'
  end

  desc "Show files list"
  task :show do
    FileList.new('tmp/**/*.rb') do |file|
      puts file.exclude(/user/)
    end
  end
end
