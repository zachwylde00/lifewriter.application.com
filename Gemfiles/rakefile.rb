# Gemfile
group :development, :test do
  gem "brakeman", require: false
  gem "parallel_tests"
  gem "rails_best_practices", require: false
  gem "reek", require: false
  gem "rubocop", require: false
# Rakefile
# frozen_string_literal: true

require_relative "config/application"
require "rubocop/rake_task"

Rails.application.load_tasks
Rake::Task["default"].clear
Rake::Task["test"].clear

task :default do
  Rake::Task["brakeman:check"].invoke
  Rake::Task["parallel:test"].invoke

  RuboCop::RakeTask.new(:rubocop)
  Rake::Task["rubocop"].invoke
  Rake::Task["rails_best_practices:run"].invoke
  Rake::Task["reek:run"].invoke
end

task :test do
  Rake::Task["parallel:test"].invoke
end
