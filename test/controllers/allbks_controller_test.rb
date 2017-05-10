require 'test_helper'

class AllbksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allbk = allbks(:one)
  end

  test "should get index" do
    get allbks_url
    assert_response :success
  end

  test "should get new" do
    get new_allbk_url
    assert_response :success
  end

  test "should create allbk" do
    assert_difference('Allbk.count') do
      post allbks_url, params: { allbk: { isbn: @allbk.isbn, issue: @allbk.issue } }
    end

    assert_redirected_to allbk_url(Allbk.last)
  end

  test "should show allbk" do
    get allbk_url(@allbk)
    assert_response :success
  end

  test "should get edit" do
    get edit_allbk_url(@allbk)
    assert_response :success
  end

  test "should update allbk" do
    patch allbk_url(@allbk), params: { allbk: { isbn: @allbk.isbn, issue: @allbk.issue } }
    assert_redirected_to allbk_url(@allbk)
  end

  test "should destroy allbk" do
    assert_difference('Allbk.count', -1) do
      delete allbk_url(@allbk)
    end

    assert_redirected_to allbks_url
  end
end
