# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require 'minitest/autorun'
require 'rspec/hanami'

RSpec.configure do |config|
  config.include RSpec::Hanami::Matchers
  # config.include RSpec::Hanami::RequestHelpers

  # config.use_transactional_fixtures = false
  # config.infer_spec_type_from_file_location!
end

Hanami.boot
