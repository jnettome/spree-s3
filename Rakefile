# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/spree_s3/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name = "spree-s3"
  gem.homepage = "http://github.com/jnettome/spree-s3"
  gem.license = "MIT"
  gem.summary = "Spree extension to configure image uploads in S3"
  gem.description = "Spree extension to configure image uploads in S3"
  gem.email = "hi@joaonetto.me"
  gem.authors = ["João Netto"]
  gem.version = SpreeS3::Version::STRING
end
Jeweler::RubygemsDotOrgTasks.new

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "spree_s3 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end