require "test_helper"

class CyberdocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyberdoc = cyberdocs(:one)
  end

  test "should get index" do
    get cyberdocs_url
    assert_response :success
  end

  test "should get new" do
    get new_cyberdoc_url
    assert_response :success
  end

  test "should create cyberdoc" do
    assert_difference("Cyberdoc.count") do
      post cyberdocs_url, params: { cyberdoc: { email: @cyberdoc.email, first_name: @cyberdoc.first_name, insta: @cyberdoc.insta, last_name: @cyberdoc.last_name, phone: @cyberdoc.phone } }
    end

    assert_redirected_to cyberdoc_url(Cyberdoc.last)
  end

  test "should show cyberdoc" do
    get cyberdoc_url(@cyberdoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyberdoc_url(@cyberdoc)
    assert_response :success
  end

  test "should update cyberdoc" do
    patch cyberdoc_url(@cyberdoc), params: { cyberdoc: { email: @cyberdoc.email, first_name: @cyberdoc.first_name, insta: @cyberdoc.insta, last_name: @cyberdoc.last_name, phone: @cyberdoc.phone } }
    assert_redirected_to cyberdoc_url(@cyberdoc)
  end

  test "should destroy cyberdoc" do
    assert_difference("Cyberdoc.count", -1) do
      delete cyberdoc_url(@cyberdoc)
    end

    assert_redirected_to cyberdocs_url
  end
end
