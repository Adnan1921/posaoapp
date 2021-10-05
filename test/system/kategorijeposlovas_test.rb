require "application_system_test_case"

class KategorijeposlovasTest < ApplicationSystemTestCase
  setup do
    @kategorijeposlova = kategorijeposlovas(:one)
  end

  test "visiting the index" do
    visit kategorijeposlovas_url
    assert_selector "h1", text: "Kategorijeposlovas"
  end

  test "creating a Kategorijeposlova" do
    visit kategorijeposlovas_url
    click_on "New Kategorijeposlova"

    fill_in "Naziv", with: @kategorijeposlova.naziv
    fill_in "Opis", with: @kategorijeposlova.opis
    click_on "Create Kategorijeposlova"

    assert_text "Kategorijeposlova was successfully created"
    click_on "Back"
  end

  test "updating a Kategorijeposlova" do
    visit kategorijeposlovas_url
    click_on "Edit", match: :first

    fill_in "Naziv", with: @kategorijeposlova.naziv
    fill_in "Opis", with: @kategorijeposlova.opis
    click_on "Update Kategorijeposlova"

    assert_text "Kategorijeposlova was successfully updated"
    click_on "Back"
  end

  test "destroying a Kategorijeposlova" do
    visit kategorijeposlovas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kategorijeposlova was successfully destroyed"
  end
end
