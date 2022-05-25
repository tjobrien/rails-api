require 'test_helper'

class PipelineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pipeline_index_url
    assert_response :success
  end

  test "should get show" do
    get pipeline_show_url
    assert_response :success
  end

end
