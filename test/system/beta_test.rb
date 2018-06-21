require "application_system_test_case"

class BetaTest < ApplicationSystemTestCase
  setup do
    @betum = beta(:one)
  end

  test "visiting the index" do
    visit beta_url
    assert_selector "h1", text: "Beta"
  end

  test "creating a Betum" do
    visit beta_url
    click_on "New Betum"

    fill_in "Age", with: @betum.age
    fill_in "Name", with: @betum.name
    fill_in "Phone", with: @betum.phone
    click_on "Create Betum"

    assert_text "Betum was successfully created"
    click_on "Back"
  end

  test "updating a Betum" do
    visit beta_url
    click_on "Edit", match: :first

    fill_in "Age", with: @betum.age
    fill_in "Name", with: @betum.name
    fill_in "Phone", with: @betum.phone
    click_on "Update Betum"

    assert_text "Betum was successfully updated"
    click_on "Back"
  end

  test "destroying a Betum" do
    visit beta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Betum was successfully destroyed"
  end
end
