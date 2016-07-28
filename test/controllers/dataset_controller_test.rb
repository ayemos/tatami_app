require 'test_helper'

class DatasetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dataset_index_url
    assert_response :success
  end

  test "should get show" do
    get dataset_show_url
    assert_response :success
  end

  test "should get edit" do
    get dataset_edit_url
    assert_response :success
  end

  test "should get create" do
    get dataset_create_url
    assert_response :success
  end

  test "should get update" do
    get dataset_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dataset_destroy_url
    assert_response :success
  end

end
