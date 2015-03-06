require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :all

  test "provider get his index" do
    @user = users(:provider)
    sign_in @user
    get :index, user_id: @user.id
    assert_response :success
  end

  test "provider cannot get index of other provider" do
    @user = users(:provider)
    sign_in @user
    @user2 = users(:provider2)
    get :index, user_id: @user2.id
    assert_response :redirect
  end

  test "client cannot get product index" do
    @user = users(:client)
    sign_in @user
    get :index, user_id: @user.id
    assert_response :redirect

  end


  test "client should not get index" do
    @user = users(:client)
    sign_in @user
    get :index, user_id: @user.id
    assert_response :redirect
  end

 

  # setup do
  #   @product = products(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:products)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post :create, product: { additionals_id: @product.additionals_id, age_range_from: @product.age_range_from, age_range_to: @product.age_range_to, base_price: @product.base_price, category_id: @product.category_id, cost_extra_kid: @product.cost_extra_kid, description_extra_time: @product.description_extra_time, kind: @product.kind, max_extra_kid: @product.max_extra_kid, maxcapacity_id: @product.maxcapacity_id, name: @product.name, option_transport: @product.option_transport, options_additional: @product.options_additional, options_extra_kid_string: @product.options_extra_kid_string, options_extra_time: @product.options_extra_time, time_service_id: @product.time_service_id, transport_rate_id: @product.transport_rate_id }
  #   end

  #   assert_redirected_to product_path(assigns(:product))
  # end

  # test "should show product" do
  #   get :show, id: @product
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @product
  #   assert_response :success
  # end

  # test "should update product" do
  #   patch :update, id: @product, product: { additionals_id: @product.additionals_id, age_range_from: @product.age_range_from, age_range_to: @product.age_range_to, base_price: @product.base_price, category_id: @product.category_id, cost_extra_kid: @product.cost_extra_kid, description_extra_time: @product.description_extra_time, kind: @product.kind, max_extra_kid: @product.max_extra_kid, maxcapacity_id: @product.maxcapacity_id, name: @product.name, option_transport: @product.option_transport, options_additional: @product.options_additional, options_extra_kid_string: @product.options_extra_kid_string, options_extra_time: @product.options_extra_time, time_service_id: @product.time_service_id, transport_rate_id: @product.transport_rate_id }
  #   assert_redirected_to product_path(assigns(:product))
  # end

  # test "should destroy product" do
  #   assert_difference('Product.count', -1) do
  #     delete :destroy, id: @product
  #   end

  #   assert_redirected_to products_path
  # end
end
