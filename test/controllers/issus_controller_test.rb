require 'test_helper'

class IssusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issu = issus(:one)
  end

  test "should get index" do
    get issus_url
    assert_response :success
  end

  test "should get new" do
    get new_issu_url
    assert_response :success
  end

  test "should create issu" do
    assert_difference('Issu.count') do
      post issus_url, params: { issu: { allbk_id: @issu.allbk_id, issue_date: @issu.issue_date, return_date: @issu.return_date, sid: @issu.sid } }
    end

    assert_redirected_to issu_url(Issu.last)
  end

  test "should show issu" do
    get issu_url(@issu)
    assert_response :success
  end

  test "should get edit" do
    get edit_issu_url(@issu)
    assert_response :success
  end

  test "should update issu" do
    patch issu_url(@issu), params: { issu: { allbk_id: @issu.allbk_id, issue_date: @issu.issue_date, return_date: @issu.return_date, sid: @issu.sid } }
    assert_redirected_to issu_url(@issu)
  end

  test "should destroy issu" do
    assert_difference('Issu.count', -1) do
      delete issu_url(@issu)
    end

    assert_redirected_to issus_url
  end
end
