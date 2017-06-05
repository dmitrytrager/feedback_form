# Require this file for feature tests
require_relative "./spec_helper"

# require "capybara"
# require "capybara/dsl"
require "capybara/rspec"
require "email_spec"
require "email_spec/rspec"

Capybara.app = ::Hanami.app

class MiniTest::Spec
  include Capybara::DSL
end
