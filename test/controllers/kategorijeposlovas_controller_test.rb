require "test_helper"

class KategorijeposlovasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kategorijeposlova = kategorijeposlovas(:one)
  end

  test "should get index" do
    get kategorijeposlovas_url
    assert_response :success
  end

  test "should get new" do
    get new_kategorijeposlova_url
    assert_response :success
  end

  test "should create kategorijeposlova" do
    assert_difference('Kategorijeposlova.count') do
      post kategorijeposlovas_url, params: { kategorijeposlova: { naziv: @kategorijeposlova.naziv, opis: @kategorijeposlova.opis } }
    end

    assert_redirected_to kategorijeposlova_url(Kategorijeposlova.last)
  end

  test "should show kategorijeposlova" do
    get kategorijeposlova_url(@kategorijeposlova)
    assert_response :success
  end

  test "should get edit" do
    get edit_kategorijeposlova_url(@kategorijeposlova)
    assert_response :success
  end

  test "should update kategorijeposlova" do
    patch kategorijeposlova_url(@kategorijeposlova), params: { kategorijeposlova: { naziv: @kategorijeposlova.naziv, opis: @kategorijeposlova.opis } }
    assert_redirected_to kategorijeposlova_url(@kategorijeposlova)
  end

  test "should destroy kategorijeposlova" do
    assert_difference('Kategorijeposlova.count', -1) do
      delete kategorijeposlova_url(@kategorijeposlova)
    end

    assert_redirected_to kategorijeposlovas_url
  end
end
