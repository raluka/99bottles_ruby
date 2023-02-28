gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    # Setup Create the specific environment required for the test.
    expected =
      '99 bottles of beer on the wall, ' +
      "99 bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "98 bottles of beer on the wall.\n"
    # Do Perform the action to be tested.
    result = Bottles.new.verse(99)
    # “Verify Confirm the result is as expected.
    assert_equal expected, result
  end

  def test_another_verse
    expected =
      '3 bottles of beer on the wall, ' +
      "3 bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "2 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(3)
  end

  def test_verse_2
    expected =
      '2 bottles of beer on the wall, ' +
      "2 bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "1 bottle of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(2)
  end

  def test_verse_1
    expected =
      '1 bottle of beer on the wall, ' +
      "1 bottle of beer.\n" +
      'Take it down and pass it around, ' +
      "no more bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(1)
  end

  def test_verse_0
    expected =
      'No more bottles of beer on the wall, ' +
      "no more bottles of beer.\n" +
      'Go to the store and buy some more, ' +
      "99 bottles of beer on the wall.\n"
    assert_equal expected, Bottles.new.verse(0)
  end
end
