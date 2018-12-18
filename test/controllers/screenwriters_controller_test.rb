require 'test_helper'

class ScreenwritersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @screenwriter = screenwriters(:one)
  end

  test "should get index" do
    get screenwriters_url
    assert_response :success
  end

  test "should get new" do
    get new_screenwriter_url
    assert_response :success
  end

  test "should create screenwriter" do
    assert_difference('Screenwriter.count') do
      post screenwriters_url, params: { screenwriter: { name: @screenwriter.name } }
    end

    assert_redirected_to screenwriter_url(Screenwriter.last)
  end

  test "should show screenwriter" do
    get screenwriter_url(@screenwriter)
    assert_response :success
  end

  test "should get edit" do
    get edit_screenwriter_url(@screenwriter)
    assert_response :success
  end

  test "should update screenwriter" do
    patch screenwriter_url(@screenwriter), params: { screenwriter: { name: @screenwriter.name } }
    assert_redirected_to screenwriter_url(@screenwriter)
  end

  test "should destroy screenwriter" do
    assert_difference('Screenwriter.count', -1) do
      delete screenwriter_url(@screenwriter)
    end

    assert_redirected_to screenwriters_url
  end
end
