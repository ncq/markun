ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'
require 'minitest/autorun'
require "capybara/rails"
require 'capybara'

class ActiveSupport::TestCase

  # Add more helper methods to be used by all tests here...
end
