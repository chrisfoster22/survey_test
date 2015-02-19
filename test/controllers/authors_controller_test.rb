require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase

  test "should create author" do
    assert_difference "Author.count", 1 do
      Author.create(name: "Chris5", email: "chris5@chris.com", password: "password")
    end
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template "new"
  end


end
