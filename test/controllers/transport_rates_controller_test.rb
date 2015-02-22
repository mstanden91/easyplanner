require 'test_helper'

class TransportRatesControllerTest < ActionController::TestCase
  setup do
    @transport_rate = transport_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transport_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transport_rate" do
    assert_difference('TransportRate.count') do
      post :create, transport_rate: { comunne_id: @transport_rate.comunne_id, list_id: @transport_rate.list_id, price: @transport_rate.price }
    end

    assert_redirected_to transport_rate_path(assigns(:transport_rate))
  end

  test "should show transport_rate" do
    get :show, id: @transport_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transport_rate
    assert_response :success
  end

  test "should update transport_rate" do
    patch :update, id: @transport_rate, transport_rate: { comunne_id: @transport_rate.comunne_id, list_id: @transport_rate.list_id, price: @transport_rate.price }
    assert_redirected_to transport_rate_path(assigns(:transport_rate))
  end

  test "should destroy transport_rate" do
    assert_difference('TransportRate.count', -1) do
      delete :destroy, id: @transport_rate
    end

    assert_redirected_to transport_rates_path
  end
end
