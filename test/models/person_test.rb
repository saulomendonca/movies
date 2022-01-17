require "test_helper"

class PersonTest < ActiveSupport::TestCase
  setup do
    @person = people(:one)
  end

  test "should create a person with valid attributes" do
    assert @person.valid?
  end

  test "A person without first name shouldn't be valid" do
    @person.first_name = ""
    assert_not @person.valid?
  end
  
  test "A person without last name shouldn't be valid" do
    @person.first_name = ""
    assert_not @person.valid?
  end
end
