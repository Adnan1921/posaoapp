require "application_system_test_case"

class PrijavasTest < ApplicationSystemTestCase
  setup do
    @prijava = prijavas(:one)
  end

  test "visiting the index" do
    visit prijavas_url
    assert_selector "h1", text: "Prijavas"
  end

  test "creating a Prijava" do
    visit prijavas_url
    click_on "New Prijava"

    fill_in "Adresa", with: @prijava.adresa
    fill_in "Broj telefona", with: @prijava.broj_telefona
    fill_in "Datum rodjenja", with: @prijava.datum_rodjenja
    fill_in "Email", with: @prijava.email
    fill_in "Ime prezime", with: @prijava.ime_prezime
    fill_in "Strucna sprema", with: @prijava.strucna_sprema
    click_on "Create Prijava"

    assert_text "Prijava was successfully created"
    click_on "Back"
  end

  test "updating a Prijava" do
    visit prijavas_url
    click_on "Edit", match: :first

    fill_in "Adresa", with: @prijava.adresa
    fill_in "Broj telefona", with: @prijava.broj_telefona
    fill_in "Datum rodjenja", with: @prijava.datum_rodjenja
    fill_in "Email", with: @prijava.email
    fill_in "Ime prezime", with: @prijava.ime_prezime
    fill_in "Strucna sprema", with: @prijava.strucna_sprema
    click_on "Update Prijava"

    assert_text "Prijava was successfully updated"
    click_on "Back"
  end

  test "destroying a Prijava" do
    visit prijavas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prijava was successfully destroyed"
  end
end
