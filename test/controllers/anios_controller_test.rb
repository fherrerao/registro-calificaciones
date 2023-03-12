require "test_helper"

class AniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anio = anios(:one)
  end

  test "should get index" do
    get anios_url, as: :json
    assert_response :success
  end

  test "should create anio" do
    assert_difference("Anio.count") do
      post anios_url, params: { anio: { descripcion: @anio.descripcion, notaMinima: @anio.notaMinima } }, as: :json
    end

    assert_response :created
  end

  test "should show anio" do
    get anio_url(@anio), as: :json
    assert_response :success
  end

  test "should update anio" do
    patch anio_url(@anio), params: { anio: { descripcion: @anio.descripcion, notaMinima: @anio.notaMinima } }, as: :json
    assert_response :success
  end

  test "should destroy anio" do
    assert_difference("Anio.count", -1) do
      delete anio_url(@anio), as: :json
    end

    assert_response :no_content
  end
end
