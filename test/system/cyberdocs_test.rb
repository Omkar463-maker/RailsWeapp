require "application_system_test_case"

class CyberdocsTest < ApplicationSystemTestCase
  setup do
    @cyberdoc = cyberdocs(:one)
  end

  test "visiting the index" do
    visit cyberdocs_url
    assert_selector "h1", text: "Cyberdocs"
  end

  test "should create cyberdoc" do
    visit cyberdocs_url
    click_on "New cyberdoc"

    fill_in "Email", with: @cyberdoc.email
    fill_in "First name", with: @cyberdoc.first_name
    fill_in "Insta", with: @cyberdoc.insta
    fill_in "Last name", with: @cyberdoc.last_name
    fill_in "Phone", with: @cyberdoc.phone
    click_on "Create Cyberdoc"

    assert_text "Cyberdoc was successfully created"
    click_on "Back"
  end

  test "should update Cyberdoc" do
    visit cyberdoc_url(@cyberdoc)
    click_on "Edit this cyberdoc", match: :first

    fill_in "Email", with: @cyberdoc.email
    fill_in "First name", with: @cyberdoc.first_name
    fill_in "Insta", with: @cyberdoc.insta
    fill_in "Last name", with: @cyberdoc.last_name
    fill_in "Phone", with: @cyberdoc.phone
    click_on "Update Cyberdoc"

    assert_text "Cyberdoc was successfully updated"
    click_on "Back"
  end

  test "should destroy Cyberdoc" do
    visit cyberdoc_url(@cyberdoc)
    click_on "Destroy this cyberdoc", match: :first

    assert_text "Cyberdoc was successfully destroyed"
  end
end
