require "test_helper"

class CalificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calificacion = calificacions(:one)
  end

  test "should get index" do
    get calificacions_url, as: :json
    assert_response :success
  end

  test "should create calificacion" do
    assert_difference("Calificacion.count") do
      post calificacions_url, params: { calificacion: { anio_id: @calificacion.anio_id, bimestre: @calificacion.bimestre, calificacion: @calificacion.calificacion, tipoPrueba_id: @calificacion.tipoPrueba_id, tipo_id: @calificacion.tipo_id, user_id: @calificacion.user_id, valorObtenido: @calificacion.valorObtenido } }, as: :json
    end

    assert_response :created
  end

  test "should show calificacion" do
    get calificacion_url(@calificacion), as: :json
    assert_response :success
  end

  test "should update calificacion" do
    patch calificacion_url(@calificacion), params: { calificacion: { anio_id: @calificacion.anio_id, bimestre: @calificacion.bimestre, calificacion: @calificacion.calificacion, tipoPrueba_id: @calificacion.tipoPrueba_id, tipo_id: @calificacion.tipo_id, user_id: @calificacion.user_id, valorObtenido: @calificacion.valorObtenido } }, as: :json
    assert_response :success
  end

  test "should destroy calificacion" do
    assert_difference("Calificacion.count", -1) do
      delete calificacion_url(@calificacion), as: :json
    end

    assert_response :no_content
  end
end
