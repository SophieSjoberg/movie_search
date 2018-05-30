
require "cucumber/rails"
require "webmock/cucumber"

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Before do
  stub_request(:any, /www.omdbapi.com/).
    to_return(body: OMDBStubs.multiple_response)
end
