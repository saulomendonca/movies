require "test_helper"

class RoleTest < ActiveSupport::TestCase
  setup do
    @role = roles(:one)
  end

  test "should create a role with valid attributes" do
    assert @role.valid?
  end

  test "A role without a person shouldn't be valid" do
    @role.person = nil
    assert_not @role.valid?
  end
  
  test "A role without a movie shouldn't be valid" do
    @role.movie = nil
    assert_not @role.valid?
  end

  test "Should not create a role with an invalid role_type" do
    @role.role_type = "trainee"
    assert_not @role.valid?
  end
end
