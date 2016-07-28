require 'test_helper'

class DatasetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get datasets_index_url
    assert_response :success
  end

  test "should get show" do
    get datasets_show_url
    assert_response :success
  end

  test "should get edit" do
    get datasets_edit_url
    assert_response :success
  end

  test "should get create" do
    get datasets_create_url
    assert_response :success
  end

  test "should get update" do
    get datasets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get datasets_destroy_url
    assert_response :success
  end

end
