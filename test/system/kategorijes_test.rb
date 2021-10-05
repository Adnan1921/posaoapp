require "application_system_test_case"

class KategorijesTest < ApplicationSystemTestCase
  setup do
    @kategorije = kategorijes(:one)
  end

  test "visiting the index" do
    visit kategorijes_url
    assert_selector "h1", text: "Kategorijes"
  end

  test "creating a Kategorije" do
    visit kategorijes_url
    click_on "New Kategorije"

    fill_in "Naziv", with: @kategorije.naziv
    fill_in "Opis", with: @kategorije.opis
    click_on "Create Kategorije"

    assert_text "Kategorije was successfully created"
    click_on "Back"
  end

  test "updating a Kategorije" do
    visit kategorijes_url
    click_on "Edit", match: :first

    fill_in "Naziv", with: @kategorije.naziv
    fill_in "Opis", with: @kategorije.opis
    click_on "Update Kategorije"

    assert_text "Kategorije was successfully updated"
    click_on "Back"
  end

  test "destroying a Kategorije" do
    visit kategorijes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kategorije was successfully destroyed"
  end
end
