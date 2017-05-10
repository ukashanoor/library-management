require 'test_helper'

class StudetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studet = studets(:one)
  end

  test "should get index" do
    get studets_url
    assert_response :success
  end

  test "should get new" do
    get new_studet_url
    assert_response :success
  end

  test "should create studet" do
    assert_difference('Studet.count') do
      post studets_url, params: { studet: { branch: @studet.branch, dob: @studet.dob, name: @studet.name, sid: @studet.sid, year: @studet.year } }
    end

    assert_redirected_to studet_url(Studet.last)
  end

  test "should show studet" do
    get studet_url(@studet)
    assert_response :success
  end

  test "should get edit" do
    get edit_studet_url(@studet)
    assert_response :success
  end

  test "should update studet" do
    patch studet_url(@studet), params: { studet: { branch: @studet.branch, dob: @studet.dob, name: @studet.name, sid: @studet.sid, year: @studet.year } }
    assert_redirected_to studet_url(@studet)
  end

  test "should destroy studet" do
    assert_difference('Studet.count', -1) do
      delete studet_url(@studet)
    end

    assert_redirected_to studets_url
  end
end
