require "test_helper"

class PelotonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peloton = pelotons(:one)
  end

  test "should get index" do
    get pelotons_url, as: :json
    assert_response :success
  end

  test "should create peloton" do
    assert_difference("Peloton.count") do
      post pelotons_url, params: { peloton: { descripcion: @peloton.descripcion, user_id: @peloton.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show peloton" do
    get peloton_url(@peloton), as: :json
    assert_response :success
  end

  test "should update peloton" do
    patch peloton_url(@peloton), params: { peloton: { descripcion: @peloton.descripcion, user_id: @peloton.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy peloton" do
    assert_difference("Peloton.count", -1) do
      delete peloton_url(@peloton), as: :json
    end

    assert_response :no_content
  end
end
