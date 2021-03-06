ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def login_as(user)
    post login_url, params: {session: { username:  user.username, password: '12345'}}
  end
end


# Capybara
# see https://github.com/jnicklas/capybara#using-capybara-with-testunit
class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL

  def login_as(user)
    post login_url, params: {session: { username:  user.username, password: '12345'}}
  end

  def logout
    delete logout_url
  end

  def login_for_capybara(user)
    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: '12345'
    click_button "Log in"
  end

  # Reset sessions and driver between tests
  # Use super wherever this method is redefined in your individual test classes
  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

#Code from Barbara Kleinen media-programming-rails/poller/test/test_helper.rb
#commit 1d1e8a634b84e4b8d1113b045f89ab50df81089a
def is_logged_in?
  !session[:user_id].nil?
end