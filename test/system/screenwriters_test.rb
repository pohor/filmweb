require "application_system_test_case"

class ScreenwritersTest < ApplicationSystemTestCase
  setup do
    @screenwriter = screenwriters(:one)
  end

  test "visiting the index" do
    visit screenwriters_url
    assert_selector "h1", text: "Screenwriters"
  end

  test "creating a Screenwriter" do
    visit screenwriters_url
    click_on "New Screenwriter"

    fill_in "Name", with: @screenwriter.name
    click_on "Create Screenwriter"

    assert_text "Screenwriter was successfully created"
    click_on "Back"
  end

  test "updating a Screenwriter" do
    visit screenwriters_url
    click_on "Edit", match: :first

    fill_in "Name", with: @screenwriter.name
    click_on "Update Screenwriter"

    assert_text "Screenwriter was successfully updated"
    click_on "Back"
  end

  test "destroying a Screenwriter" do
    visit screenwriters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Screenwriter was successfully destroyed"
  end
end
