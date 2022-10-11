require_relative "simple_program"
require "test/unit"

class TestSimpleProgram < Test::Unit::TestCase

  def test_function
    assert_equal(6, SimpleProgram.new(2).add(4))
    assert_equal(8, SimpleProgram.new(4).multiply(2))
  end

  def test_typecheck
    assert_raise( RuntimeError ) { SimpleProgram.new('a') }
  end

  def test_failure
    assert_equal(16, SimpleProgram.new(8).add(8), "Adding doesn't work" )
  end

end
