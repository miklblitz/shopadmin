require 'test_helper'

class RazdelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @razdel = razdels(:one)
  end

  test "should get index" do
    get razdels_url
    assert_response :success
  end

  test "should get new" do
    get new_razdel_url
    assert_response :success
  end

  test "should create razdel" do
    assert_difference('Razdel.count') do
      post razdels_url, params: { razdel: { name: @razdel.name } }
    end

    assert_redirected_to razdel_url(Razdel.last)
  end

  test "should show razdel" do
    get razdel_url(@razdel)
    assert_response :success
  end

  test "should get edit" do
    get edit_razdel_url(@razdel)
    assert_response :success
  end

  test "should update razdel" do
    patch razdel_url(@razdel), params: { razdel: { name: @razdel.name } }
    assert_redirected_to razdel_url(@razdel)
  end

  test "should destroy razdel" do
    assert_difference('Razdel.count', -1) do
      delete razdel_url(@razdel)
    end

    assert_redirected_to razdels_url
  end
end
