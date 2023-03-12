require "test_helper"

class SeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seccion = seccions(:one)
  end

  test "should get index" do
    get seccions_url, as: :json
    assert_response :success
  end

  test "should create seccion" do
    assert_difference("Seccion.count") do
      post seccions_url, params: { seccion: { descripcion: @seccion.descripcion, user_id: @seccion.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show seccion" do
    get seccion_url(@seccion), as: :json
    assert_response :success
  end

  test "should update seccion" do
    patch seccion_url(@seccion), params: { seccion: { descripcion: @seccion.descripcion, user_id: @seccion.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy seccion" do
    assert_difference("Seccion.count", -1) do
      delete seccion_url(@seccion), as: :json
    end

    assert_response :no_content
  end
end
