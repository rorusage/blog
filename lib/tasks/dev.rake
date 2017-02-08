namespace :dev do
  desc "Clear all"
  task :clear => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate"]
  task :rebuild => ["dev:clear", "db:seed"]
end
