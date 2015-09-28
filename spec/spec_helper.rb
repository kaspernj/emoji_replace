require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "simplecov"
require "emoji_replace"
require "factory_girl"
require "active_record"

if RUBY_PLATFORM == "java"
  require "jdbc/sqlite3"
  ::Jdbc::SQLite3.load_driver
else
  require "sqlite3"
end

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

load "#{File.dirname(__FILE__)}/schema.rb"
require "#{File.dirname(__FILE__)}/models/message"
require "#{File.dirname(__FILE__)}/factories/message"

module SimpleCov::Configuration
  def clean_filters
    @filters = []
  end
end

SimpleCov.configure do
  clean_filters
  load_adapter 'test_frameworks'
end

ENV["COVERAGE"] && SimpleCov.start do
  add_filter "/.rvm/"
end
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rspec'
require 'emoji_replace'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
