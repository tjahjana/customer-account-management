require 'test_helper'

class ListContractsTest < ActionDispatch::IntegrationTest
    include ActiveJob::TestHelper

    test "get contracts list of customer" do
      #perform test
      assert_response :success
  end
end