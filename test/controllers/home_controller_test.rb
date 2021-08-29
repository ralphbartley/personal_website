require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should link to projects" do
    get root_url
    assert_select "a", text: "Projects"
  end

  test "should link to blog" do
    get root_url
    assert_select "a", text: "Blog"
  end
end
