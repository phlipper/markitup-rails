require "minitest_helper"

class Markitup::RailsTest < ActiveSupport::TestCase
  test "module definition" do
    assert_kind_of Module, Markitup::Rails
  end
end
