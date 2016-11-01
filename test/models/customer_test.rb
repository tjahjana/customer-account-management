require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

  setup do
    @customer = customers(:one)
    @contract = contracts(:one)
  end
  test "make sure association works here" do
    assert_equal 1, @customer.contracts.size
    assert_equal @customer.contracts.where(:id => 1).first, @contract
  end

end
