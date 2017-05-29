source "https://rubygems.org"

gem "rake"
gem "hanami",       "~> 1.0"
gem "hanami-model", "~> 1.0"

# db
gem "sqlite3"

# views
# gem "simple_form"
gem "slim"
gem "hanami-bootstrap"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "shotgun"
  # gem "shoulda-hanami"
end

group :test, :development do
  gem "dotenv", "~> 2.0"
  gem "rspec-hanami"
  gem "faker"
  gem "email_spec"
end

group :test do
  gem "minitest"
  gem "capybara"
end

group :production do
  # gem "puma"
end
