require 'test_helper'

class BinariesControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get binaries_question_url
    assert_response :success
  end

end
