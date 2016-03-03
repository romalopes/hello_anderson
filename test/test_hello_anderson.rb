require 'test/unit'
require 'hello_anderson'

class HelloAndersonTest < Test::Unit::TestCase
  def test_hello_anderson
    # assert_equal "Hello Anderson!", HelloAnderson.say_hello
    assert_equal "Hello Anderson!", HelloAnderson.say_hello
  end

    def test_hello_anderson_Error
    # assert_equal "Hello Anderson!", HelloAnderson.say_hello
    assert_equal "Hello Anderson!aaaa", HelloAnderson.say_hello
  end
end

