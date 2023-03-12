require "test_helper"

class TipoPruebasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_prueba = tipo_pruebas(:one)
  end

  test "should get index" do
    get tipo_pruebas_url, as: :json
    assert_response :success
  end

  test "should create tipo_prueba" do
    assert_difference("TipoPrueba.count") do
      post tipo_pruebas_url, params: { tipo_prueba: { desTipoPrueba: @tipo_prueba.desTipoPrueba, generPrueba: @tipo_prueba.generPrueba } }, as: :json
    end

    assert_response :created
  end

  test "should show tipo_prueba" do
    get tipo_prueba_url(@tipo_prueba), as: :json
    assert_response :success
  end

  test "should update tipo_prueba" do
    patch tipo_prueba_url(@tipo_prueba), params: { tipo_prueba: { desTipoPrueba: @tipo_prueba.desTipoPrueba, generPrueba: @tipo_prueba.generPrueba } }, as: :json
    assert_response :success
  end

  test "should destroy tipo_prueba" do
    assert_difference("TipoPrueba.count", -1) do
      delete tipo_prueba_url(@tipo_prueba), as: :json
    end

    assert_response :no_content
  end
end
