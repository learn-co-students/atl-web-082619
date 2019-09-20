require 'test_helper'

class TrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainers_index_url
    assert_response :success
  end

  test "should get show" do
    get trainers_show_url
    assert_response :success
  end

  test "should get new" do
    get trainers_new_url
    assert_response :success
  end

end
