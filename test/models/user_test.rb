require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test "should create a user with valid attributes" do
    assert @user.valid?
  end
end
