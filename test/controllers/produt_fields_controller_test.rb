require "test_helper"

class ProdutFieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get produt_fields_index_url
    assert_response :success
  end

  test "should get show" do
    get produt_fields_show_url
    assert_response :success
  end

  test "should get new" do
    get produt_fields_new_url
    assert_response :success
  end

  test "should get destroy" do
    get produt_fields_destroy_url
    assert_response :success
  end
end
