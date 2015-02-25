# require 'test_helper'

# class AdditionalsControllerTest < ActionController::TestCase
#   include Devise::TestHelpers
#   fixtures :all

#   test "provider should get index" do
#     @user = users(:provider)
#     sign_in @user
#     get :index
#     assert_response :success
#   end

#   test "client should not get index" do
#     @user = users(:client)
#     sign_in @user
#     get :index
#     assert_response :redirect
#   end

#   test "not authenticated shoud get redirect" do |variable|
#     get :index
#     assert_response :redirect
#   end

  # setup do
  #   @additional = additionals(:one)
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:additionals)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create additional" do
  #   assert_difference('Additional.count') do
  #     post :create, additional: { name: @additional.name, price: @additional.price, product_id: @additional.product_id }
  #   end

  #   assert_redirected_to additional_path(assigns(:additional))
  # end

  # test "should show additional" do
  #   get :show, id: @additional
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @additional
  #   assert_response :success
  # end

  # test "should update additional" do
  #   patch :update, id: @additional, additional: { name: @additional.name, price: @additional.price, product_id: @additional.product_id }
  #   assert_redirected_to additional_path(assigns(:additional))
  # end

  # test "should destroy additional" do
  #   assert_difference('Additional.count', -1) do
  #     delete :destroy, id: @additional
  #   end

  #   assert_redirected_to additionals_path
  # end
# end
