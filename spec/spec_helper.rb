require "bundler"
Bundler.setup(:default, :development)
Bundler.require(:default, :development)

require "spree_s3"
require "rspec"