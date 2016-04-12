require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "visit should belong to pet" do
    pet = pets(:one)
    visit = visits(:one)

    assert_equal visit.pet, pet

  end

end
