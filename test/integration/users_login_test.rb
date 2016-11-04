#Code from Barbara Kleinen media-programming-rails/poller/test/integration/users_login_test.rb
#commit 1d1e8a634b84e4b8d1113b045f89ab50df81089a

require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
    @user_params = { username:    @user.username,  password: '12345' }
    @user_params_with_wrong_password = { username:    @user.username,  password: 'wrong' }
  end

  test "login with valid information" do
    get login_path
    post login_path, params: { session: @user_params}
    assert_redirected_to root_path
    assert is_logged_in?, "must be logged in now"
  end

  test "login with wrong password" do
    get login_path
    post login_path, params: { session: @user_params_with_wrong_password}
    assert_redirected_to login_path
    assert !is_logged_in?, "must not be logged in now"

  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: @user_params }
    assert is_logged_in?, "must be logged in now"
    assert_redirected_to root_path

    delete logout_path
    assert_not is_logged_in?, "must be logged out now"
    assert_redirected_to root_path

  end
end