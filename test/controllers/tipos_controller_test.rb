require "test_helper"

class TiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo = tipos(:one)
  end

  test "should get index" do
    get tipos_url, as: :json
    assert_response :success
  end

  test "should create tipo" do
    assert_difference("Tipo.count") do
      post tipos_url, params: { tipo: { descripcion: @tipo.descripcion } }, as: :json
    end

    assert_response :created
  end

  test "should show tipo" do
    get tipo_url(@tipo), as: :json
    assert_response :success
  end

  test "should update tipo" do
    patch tipo_url(@tipo), params: { tipo: { descripcion: @tipo.descripcion } }, as: :json
    assert_response :success
  end

  test "should destroy tipo" do
    assert_difference("Tipo.count", -1) do
      delete tipo_url(@tipo), as: :json
    end

    assert_response :no_content
  end
end
