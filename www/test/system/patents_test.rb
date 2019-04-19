require "application_system_test_case"

class PatentsTest < ApplicationSystemTestCase
  setup do
    @patent = patents(:one)
  end

  test "visiting the index" do
    visit patents_url
    assert_selector "h1", text: "Patents"
  end

  test "creating a Patent" do
    visit patents_url
    click_on "New Patent"

    click_on "Create Patent"

    assert_text "Patent was successfully created"
    click_on "Back"
  end

  test "updating a Patent" do
    visit patents_url
    click_on "Edit", match: :first

    click_on "Update Patent"

    assert_text "Patent was successfully updated"
    click_on "Back"
  end

  test "destroying a Patent" do
    visit patents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patent was successfully destroyed"
  end
end
