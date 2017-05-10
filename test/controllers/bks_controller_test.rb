require 'test_helper'

class BksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bk = bks(:one)
  end

  test "should get index" do
    get bks_url
    assert_response :success
  end

  test "should get new" do
    get new_bk_url
    assert_response :success
  end

  test "should create bk" do
    assert_difference('Bk.count') do
      post bks_url, params: { bk: { author: @bk.author, available: @bk.available, copies: @bk.copies, isbn: @bk.isbn, publication: @bk.publication, subject: @bk.subject, title: @bk.title } }
    end

    assert_redirected_to bk_url(Bk.last)
  end

  test "should show bk" do
    get bk_url(@bk)
    assert_response :success
  end

  test "should get edit" do
    get edit_bk_url(@bk)
    assert_response :success
  end

  test "should update bk" do
    patch bk_url(@bk), params: { bk: { author: @bk.author, available: @bk.available, copies: @bk.copies, isbn: @bk.isbn, publication: @bk.publication, subject: @bk.subject, title: @bk.title } }
    assert_redirected_to bk_url(@bk)
  end

  test "should destroy bk" do
    assert_difference('Bk.count', -1) do
      delete bk_url(@bk)
    end

    assert_redirected_to bks_url
  end
end
