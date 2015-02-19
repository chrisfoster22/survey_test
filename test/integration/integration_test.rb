require 'test_helper'

class IntegrationTest < ActionDispatch::IntegrationTest

  test "get redirected to login" do
    get new_survey_path
    assert_redirected_to sessions_log_in_path, flash[:notice]
  end

end
