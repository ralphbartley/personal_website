require "test_helper"

class BaseBuddyControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_design = base_buddy(:one)
  end

  test "should get index" do
    get base_buddy_url
    assert_response :success
  end

  test "should get new" do
    get new_base_design_url
    assert_response :success
  end

  test "should create base_design" do
    assert_difference('BaseDesign.count') do
      post base_buddy_url, params: { base_design: { data: @base_design.data, title: @base_design.title } }
    end

    assert_redirected_to base_design_url(BaseDesign.last)
  end

  test "should show base_design" do
    get base_design_url(@base_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_base_design_url(@base_design)
    assert_response :success
  end

  test "should update base_design" do
    patch base_design_url(@base_design), params: { base_design: { data: @base_design.data, title: @base_design.title } }
    assert_redirected_to base_design_url(@base_design)
  end

  test "should destroy base_design" do
    assert_difference('BaseDesign.count', -1) do
      delete base_design_url(@base_design)
    end

    assert_redirected_to base_buddy_url
  end
end
