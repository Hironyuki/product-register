require "application_system_test_case"

class ProcuctsTest < ApplicationSystemTestCase
  setup do
    @procuct = procucts(:one)
  end

  test "visiting the index" do
    visit procucts_url
    assert_selector "h1", text: "Procucts"
  end

  test "creating a Procuct" do
    visit procucts_url
    click_on "New Procuct"

    fill_in "Name", with: @procuct.name
    fill_in "Price", with: @procuct.price
    fill_in "Vendor", with: @procuct.vendor
    click_on "Create Procuct"

    assert_text "Procuct was successfully created"
    click_on "Back"
  end

  test "updating a Procuct" do
    visit procucts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @procuct.name
    fill_in "Price", with: @procuct.price
    fill_in "Vendor", with: @procuct.vendor
    click_on "Update Procuct"

    assert_text "Procuct was successfully updated"
    click_on "Back"
  end

  test "destroying a Procuct" do
    visit procucts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Procuct was successfully destroyed"
  end
end
