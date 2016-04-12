require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user must have a veterinary" do
    user = users(:one)
    user.veterinary = nil
    assert_not user.valid?
  end
end
