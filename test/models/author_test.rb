require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
    @author = authors(:chris)
  end


  test "authors exist" do
    assert Author.count > 0
    Author.destroy_all
  end

  test "fixtures work" do
  assert Author.count > 0
end

  test "chris is chris" do
    assert_equal "Chris", authors(:chris).name
  end

  test "emails are unique" do
    dark_chris = Author.new(name: "Chris", email: "chris@chris.com")
    refute dark_chris.save
  end

  test "can find by email" do
    assert_equal @author, Author.find_specific_email("chris@chris.com")
  end
end
