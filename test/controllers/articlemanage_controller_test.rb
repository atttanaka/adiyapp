require 'test_helper'

class ArticlemanageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articlemanage_index_url
    assert_response :success
  end

  test "should get new" do
    get articlemanage_new_url
    assert_response :success
  end

  test "should get edit" do
    get articlemanage_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get articlemanage_destroy_url
    assert_response :success
  end

end
