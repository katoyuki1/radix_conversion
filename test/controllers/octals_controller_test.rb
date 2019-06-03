require 'test_helper'

class OctalsControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get octals_question_url
    assert_response :success
  end

end
