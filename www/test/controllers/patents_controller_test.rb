require 'test_helper'

class PatentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patent = patents(:one)
  end

  test "should get index" do
    get patents_url
    assert_response :success
  end

  test "should get new" do
    get new_patent_url
    assert_response :success
  end

  test "should create patent" do
    assert_difference('Patent.count') do
      post patents_url, params: { patent: {  } }
    end

    assert_redirected_to patent_url(Patent.last)
  end

  test "should show patent" do
    get patent_url(@patent)
    assert_response :success
  end

  test "should get edit" do
    get edit_patent_url(@patent)
    assert_response :success
  end

  test "should update patent" do
    patch patent_url(@patent), params: { patent: {  } }
    assert_redirected_to patent_url(@patent)
  end

  test "should destroy patent" do
    assert_difference('Patent.count', -1) do
      delete patent_url(@patent)
    end

    assert_redirected_to patents_url
  end
end
