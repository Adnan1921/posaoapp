require "test_helper"

class PrijavasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prijava = prijavas(:one)
  end

  test "should get index" do
    get prijavas_url
    assert_response :success
  end

  test "should get new" do
    get new_prijava_url
    assert_response :success
  end

  test "should create prijava" do
    assert_difference('Prijava.count') do
      post prijavas_url, params: { prijava: { adresa: @prijava.adresa, broj_telefona: @prijava.broj_telefona, datum_rodjenja: @prijava.datum_rodjenja, email: @prijava.email, ime_prezime: @prijava.ime_prezime, strucna_sprema: @prijava.strucna_sprema } }
    end

    assert_redirected_to prijava_url(Prijava.last)
  end

  test "should show prijava" do
    get prijava_url(@prijava)
    assert_response :success
  end

  test "should get edit" do
    get edit_prijava_url(@prijava)
    assert_response :success
  end

  test "should update prijava" do
    patch prijava_url(@prijava), params: { prijava: { adresa: @prijava.adresa, broj_telefona: @prijava.broj_telefona, datum_rodjenja: @prijava.datum_rodjenja, email: @prijava.email, ime_prezime: @prijava.ime_prezime, strucna_sprema: @prijava.strucna_sprema } }
    assert_redirected_to prijava_url(@prijava)
  end

  test "should destroy prijava" do
    assert_difference('Prijava.count', -1) do
      delete prijava_url(@prijava)
    end

    assert_redirected_to prijavas_url
  end
end
