require "test_helper"

class KategorijesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kategorije = kategorijes(:one)
  end

  test "should get index" do
    get kategorijes_url
    assert_response :success
  end

  test "should get new" do
    get new_kategorije_url
    assert_response :success
  end

  test "should create kategorije" do
    assert_difference('Kategorije.count') do
      post kategorijes_url, params: { kategorije: { naziv: @kategorije.naziv, opis: @kategorije.opis } }
    end

    assert_redirected_to kategorije_url(Kategorije.last)
  end

  test "should show kategorije" do
    get kategorije_url(@kategorije)
    assert_response :success
  end

  test "should get edit" do
    get edit_kategorije_url(@kategorije)
    assert_response :success
  end

  test "should update kategorije" do
    patch kategorije_url(@kategorije), params: { kategorije: { naziv: @kategorije.naziv, opis: @kategorije.opis } }
    assert_redirected_to kategorije_url(@kategorije)
  end

  test "should destroy kategorije" do
    assert_difference('Kategorije.count', -1) do
      delete kategorije_url(@kategorije)
    end

    assert_redirected_to kategorijes_url
  end
end
