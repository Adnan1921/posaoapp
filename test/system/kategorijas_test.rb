require "application_system_test_case"

class KategorijasTest < ApplicationSystemTestCase
  setup do
    @kategorija = kategorijas(:one)
  end

  test "visiting the index" do
    visit kategorijas_url
    assert_selector "h1", text: "Kategorijas"
  end

  test "creating a Kategorija" do
    visit kategorijas_url
    click_on "New Kategorija"

    fill_in "Naziv kategorije", with: @kategorija.naziv_kategorije
    fill_in "Opis kategorije", with: @kategorija.opis_kategorije
    click_on "Create Kategorija"

    assert_text "Kategorija was successfully created"
    click_on "Back"
  end

  test "updating a Kategorija" do
    visit kategorijas_url
    click_on "Edit", match: :first

    fill_in "Naziv kategorije", with: @kategorija.naziv_kategorije
    fill_in "Opis kategorije", with: @kategorija.opis_kategorije
    click_on "Update Kategorija"

    assert_text "Kategorija was successfully updated"
    click_on "Back"
  end

  test "destroying a Kategorija" do
    visit kategorijas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kategorija was successfully destroyed"
  end
end
