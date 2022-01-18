require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "should convert 0 to '0'" do
    converted =  RomanNumerals.convert(0)
    assert_equal(converted, '0')
  end

  test "should convert 1 to 'I'" do
    converted =  RomanNumerals.convert(1)
    assert_equal(converted, 'I')
  end

  test "should convert 2 to 'II'" do
    converted =  RomanNumerals.convert(2)
    assert_equal(converted, 'II')
  end

  test "should convert 3 to 'III'" do
    converted =  RomanNumerals.convert(3)
    assert_equal(converted, 'III')
  end

  test "should convert 4 to 'IV'" do
    converted =  RomanNumerals.convert(4)
    assert_equal(converted, 'IV')
  end

  test "should convert 5 to 'V'" do
    converted =  RomanNumerals.convert(5)
    assert_equal(converted, 'V')
  end

  test "should convert 6 to 'VI'" do
    converted =  RomanNumerals.convert(6)
    assert_equal(converted, 'VI')
  end

  test "should convert 9 to 'IX'" do
    converted =  RomanNumerals.convert(9)
    assert_equal(converted, 'IX')
  end

  test "should convert 10 to 'X'" do
    converted =  RomanNumerals.convert(10)
    assert_equal(converted, 'X')
  end

  test "should convert 11 to 'XI'" do
    converted =  RomanNumerals.convert(11)
    assert_equal(converted, 'XI')
  end

  test "should convert 38 to 'XXXVIII'" do
    converted =  RomanNumerals.convert(38)
    assert_equal(converted, 'XXXVIII')
  end

  test "should convert 101 to 'CI'" do
    converted =  RomanNumerals.convert(101)
    assert_equal(converted, 'CI')
  end

  test "should convert 439 to 'CDXXXIX'" do
    converted =  RomanNumerals.convert(439)
    assert_equal(converted, 'CDXXXIX')
  end

  test "should convert 695 to 'DCXCV'" do
    converted =  RomanNumerals.convert(695)
    assert_equal(converted, 'DCXCV')
  end

  test "should convert 1996 to 'MCMXCVI'" do
    converted =  RomanNumerals.convert(1996)
    assert_equal(converted, 'MCMXCVI')
  end

  test "should convert 2002 to 'MMII'" do
    converted =  RomanNumerals.convert(2002)
    assert_equal(converted, 'MMII')
  end
end
