require 'test_helper'

class ListContractsTest < ActionDispatch::IntegrationTest
    include ActiveJob::TestHelper

    test "get contracts list of customer" do
      #perform test
      customer = customers(:one)

      visit customers_path

      # is it the right customer?
      assert page.has_content? customer.email

      find_link("button-show-1").click

      # is the right contract listed?
      assert page.has_content?  'Contract 1'
      contract = contracts(:one)

      # test association in database
      assert_equal customer.id, contract.customer_id
  end
end