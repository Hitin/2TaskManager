require 'simplecov'
require 'coveralls'

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
  add_filter 'app/secrets'
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'


class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include AuthHelper
  parallelize(workers: :number_of_processors)
  fixtures :all
end
