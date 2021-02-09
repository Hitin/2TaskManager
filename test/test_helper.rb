require 'simplecov'
require 'coveralls'
ENV['RAILS_ENV'] ||= 'test'

SimpleCov.start
Coveralls.wear!

require_relative '../config/environment'
require 'rails/test_help'


class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include AuthHelper
  parallelize(workers: :number_of_processors)
  fixtures :all
end
