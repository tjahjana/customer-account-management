require 'test_helper'

class ListContractsTest < ActionDispatch::IntegrationTest
    include ActiveJob::TestHelper

    test "get customer id from contract" do
      #perform test
      contract = contracts(:one)

      visit contracts_path

      # is it the right contract?
      assert page.has_content? 'Contract 1'

      find_link("button-show-1").click

      # is the right customer id  listed?
      assert page.has_content?  'Customer ID: 1'
      customer = customers(:one)

      # test association in database
      assert_equal customer.id, contract.customer_id
  end
end