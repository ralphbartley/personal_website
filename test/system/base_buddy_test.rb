require "application_system_test_case"

class BaseDesignsTest < ApplicationSystemTestCase
  setup do
    @base_design = base_buddy(:one)
  end

  test "visiting the index" do
    visit base_buddy_url
    assert_selector "h1", text: "Base Designs"
  end

  test "creating a Base design" do
    visit base_buddy_url
    click_on "New Base Design"

    fill_in "Data", with: @base_design.data
    fill_in "Title", with: @base_design.title
    click_on "Create Base design"

    assert_text "Base design was successfully created"
    click_on "Back"
  end

  test "updating a Base design" do
    visit base_buddy_url
    click_on "Edit", match: :first

    fill_in "Data", with: @base_design.data
    fill_in "Title", with: @base_design.title
    click_on "Update Base design"

    assert_text "Base design was successfully updated"
    click_on "Back"
  end

  test "destroying a Base design" do
    visit base_buddy_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Base design was successfully destroyed"
  end


end
