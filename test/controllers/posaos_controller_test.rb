require "test_helper"

class PosaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posao = posaos(:one)
  end

  test "should get index" do
    get posaos_url
    assert_response :success
  end

  test "should get new" do
    get new_posao_url
    assert_response :success
  end

  test "should create posao" do
    assert_difference('Posao.count') do
      post posaos_url, params: { posao: { email_poslodavca: @posao.email_poslodavca, naziv_oglasa: @posao.naziv_oglasa, naziv_poslodava: @posao.naziv_poslodava, opis_oglasa: @posao.opis_oglasa } }
    end

    assert_redirected_to posao_url(Posao.last)
  end

  test "should show posao" do
    get posao_url(@posao)
    assert_response :success
  end

  test "should get edit" do
    get edit_posao_url(@posao)
    assert_response :success
  end

  test "should update posao" do
    patch posao_url(@posao), params: { posao: { email_poslodavca: @posao.email_poslodavca, naziv_oglasa: @posao.naziv_oglasa, naziv_poslodava: @posao.naziv_poslodava, opis_oglasa: @posao.opis_oglasa } }
    assert_redirected_to posao_url(@posao)
  end

  test "should destroy posao" do
    assert_difference('Posao.count', -1) do
      delete posao_url(@posao)
    end

    assert_redirected_to posaos_url
  end
end
