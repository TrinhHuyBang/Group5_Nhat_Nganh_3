require "application_system_test_case"

class MyfavoritesTest < ApplicationSystemTestCase
  setup do
    @myfavorite = myfavorites(:one)
  end

  test "visiting the index" do
    visit myfavorites_url
    assert_selector "h1", text: "Myfavorites"
  end

  test "creating a Myfavorite" do
    visit myfavorites_url
    click_on "New Myfavorite"

    fill_in "Color", with: @myfavorite.color
    fill_in "Description", with: @myfavorite.description
    fill_in "Price", with: @myfavorite.price
    fill_in "Smart phone name", with: @myfavorite.smart_phone_name
    click_on "Create Myfavorite"

    assert_text "Myfavorite was successfully created"
    click_on "Back"
  end

  test "updating a Myfavorite" do
    visit myfavorites_url
    click_on "Edit", match: :first

    fill_in "Color", with: @myfavorite.color
    fill_in "Description", with: @myfavorite.description
    fill_in "Price", with: @myfavorite.price
    fill_in "Smart phone name", with: @myfavorite.smart_phone_name
    click_on "Update Myfavorite"

    assert_text "Myfavorite was successfully updated"
    click_on "Back"
  end

  test "destroying a Myfavorite" do
    visit myfavorites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myfavorite was successfully destroyed"
  end
end
