require "test_helper"

class MovieTest < ActiveSupport::TestCase
  setup do
    @movie = movies(:one)
  end

  test "should create a movie with valid attributes" do
    assert @movie.valid?
  end

  test "A movie without title shouldn't be valid" do
    @movie.title = ""
    assert_not @movie.valid?
  end

  test "A movie with a release year before than 1900 shouln't be valid" do
    @movie.release_year = 1899
    assert_not @movie.valid?
  end

  test "A movie with a release year greater than 10 years from now shouln't be valid" do
    @movie.release_year = Time.new.year + 11
    assert_not @movie.valid?
  end
end
