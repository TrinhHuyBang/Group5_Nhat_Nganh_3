require 'test_helper'

class MyfavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myfavorite = myfavorites(:one)
  end

  test "should get index" do
    get myfavorites_url
    assert_response :success
  end

  test "should get new" do
    get new_myfavorite_url
    assert_response :success
  end

  test "should create myfavorite" do
    assert_difference('Myfavorite.count') do
      post myfavorites_url, params: { myfavorite: { color: @myfavorite.color, description: @myfavorite.description, price: @myfavorite.price, smart_phone_name: @myfavorite.smart_phone_name } }
    end

    assert_redirected_to myfavorite_url(Myfavorite.last)
  end

  test "should show myfavorite" do
    get myfavorite_url(@myfavorite)
    assert_response :success
  end

  test "should get edit" do
    get edit_myfavorite_url(@myfavorite)
    assert_response :success
  end

  test "should update myfavorite" do
    patch myfavorite_url(@myfavorite), params: { myfavorite: { color: @myfavorite.color, description: @myfavorite.description, price: @myfavorite.price, smart_phone_name: @myfavorite.smart_phone_name } }
    assert_redirected_to myfavorite_url(@myfavorite)
  end

  test "should destroy myfavorite" do
    assert_difference('Myfavorite.count', -1) do
      delete myfavorite_url(@myfavorite)
    end

    assert_redirected_to myfavorites_url
  end
end
