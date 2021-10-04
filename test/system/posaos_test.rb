require "application_system_test_case"

class PosaosTest < ApplicationSystemTestCase
  setup do
    @posao = posaos(:one)
  end

  test "visiting the index" do
    visit posaos_url
    assert_selector "h1", text: "Posaos"
  end

  test "creating a Posao" do
    visit posaos_url
    click_on "New Posao"

    fill_in "Email poslodavca", with: @posao.email_poslodavca
    fill_in "Naziv oglasa", with: @posao.naziv_oglasa
    fill_in "Naziv poslodava", with: @posao.naziv_poslodava
    fill_in "Opis oglasa", with: @posao.opis_oglasa
    click_on "Create Posao"

    assert_text "Posao was successfully created"
    click_on "Back"
  end

  test "updating a Posao" do
    visit posaos_url
    click_on "Edit", match: :first

    fill_in "Email poslodavca", with: @posao.email_poslodavca
    fill_in "Naziv oglasa", with: @posao.naziv_oglasa
    fill_in "Naziv poslodava", with: @posao.naziv_poslodava
    fill_in "Opis oglasa", with: @posao.opis_oglasa
    click_on "Update Posao"

    assert_text "Posao was successfully updated"
    click_on "Back"
  end

  test "destroying a Posao" do
    visit posaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Posao was successfully destroyed"
  end
end
