$:.unshift File.join(File.dirname(__FILE__),'..',"lib")
require "test/unit"
require "spillbot"

class TestSpillbot < Test::Unit::TestCase
  def test_version
    assert_equal(Spillbot::Version::STRING, "#{Spillbot::Version::MAJOR}.#{Spillbot::Version::MINOR}.#{Spillbot::Version::TINY}")
  end
end
