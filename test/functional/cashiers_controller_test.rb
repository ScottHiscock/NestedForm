require 'test_helper'

class CashiersControllerTest < ActionController::TestCase
  setup do
    @cashier = cashiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashier" do
    assert_difference('Cashier.count') do
      post :create, cashier: { money: @cashier.money }
    end

    assert_redirected_to cashier_path(assigns(:cashier))
  end

  test "should show cashier" do
    get :show, id: @cashier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashier
    assert_response :success
  end

  test "should update cashier" do
    put :update, id: @cashier, cashier: { money: @cashier.money }
    assert_redirected_to cashier_path(assigns(:cashier))
  end

  test "should destroy cashier" do
    assert_difference('Cashier.count', -1) do
      delete :destroy, id: @cashier
    end

    assert_redirected_to cashiers_path
  end
end
