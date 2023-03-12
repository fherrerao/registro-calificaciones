require "test_helper"

class CompaniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companium = compania(:one)
  end

  test "should get index" do
    get compania_url, as: :json
    assert_response :success
  end

  test "should create companium" do
    assert_difference("Companium.count") do
      post compania_url, params: { companium: { descripcion: @companium.descripcion, user_id: @companium.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show companium" do
    get companium_url(@companium), as: :json
    assert_response :success
  end

  test "should update companium" do
    patch companium_url(@companium), params: { companium: { descripcion: @companium.descripcion, user_id: @companium.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy companium" do
    assert_difference("Companium.count", -1) do
      delete companium_url(@companium), as: :json
    end

    assert_response :no_content
  end
end
