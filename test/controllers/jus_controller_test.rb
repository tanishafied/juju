require 'test_helper'

class JusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ju = jus(:one)
  end

  test "should get index" do
    get jus_url
    assert_response :success
  end

  test "should get new" do
    get new_ju_url
    assert_response :success
  end

  test "should create ju" do
    assert_difference('Ju.count') do
      post jus_url, params: { ju: {  } }
    end

    assert_redirected_to ju_url(Ju.last)
  end

  test "should show ju" do
    get ju_url(@ju)
    assert_response :success
  end

  test "should get edit" do
    get edit_ju_url(@ju)
    assert_response :success
  end

  test "should update ju" do
    patch ju_url(@ju), params: { ju: {  } }
    assert_redirected_to ju_url(@ju)
  end

  test "should destroy ju" do
    assert_difference('Ju.count', -1) do
      delete ju_url(@ju)
    end

    assert_redirected_to jus_url
  end
end
