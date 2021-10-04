require "test_helper"

class KategorijasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kategorija = kategorijas(:one)
  end

  test "should get index" do
    get kategorijas_url
    assert_response :success
  end

  test "should get new" do
    get new_kategorija_url
    assert_response :success
  end

  test "should create kategorija" do
    assert_difference('Kategorija.count') do
      post kategorijas_url, params: { kategorija: { naziv_kategorije: @kategorija.naziv_kategorije, opis_kategorije: @kategorija.opis_kategorije } }
    end

    assert_redirected_to kategorija_url(Kategorija.last)
  end

  test "should show kategorija" do
    get kategorija_url(@kategorija)
    assert_response :success
  end

  test "should get edit" do
    get edit_kategorija_url(@kategorija)
    assert_response :success
  end

  test "should update kategorija" do
    patch kategorija_url(@kategorija), params: { kategorija: { naziv_kategorije: @kategorija.naziv_kategorije, opis_kategorije: @kategorija.opis_kategorije } }
    assert_redirected_to kategorija_url(@kategorija)
  end

  test "should destroy kategorija" do
    assert_difference('Kategorija.count', -1) do
      delete kategorija_url(@kategorija)
    end

    assert_redirected_to kategorijas_url
  end
end
