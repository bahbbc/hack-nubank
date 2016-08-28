require 'test_helper'

class AccountDataControllerTest < ActionController::TestCase
  setup do
    @account_datum = account_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_datum" do
    assert_difference('AccountDatum.count') do
      post :create, account_datum: { amount: @account_datum.amount, category: @account_datum.category, name: @account_datum.name, user_id: @account_datum.user_id }
    end

    assert_redirected_to account_datum_path(assigns(:account_datum))
  end

  test "should show account_datum" do
    get :show, id: @account_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_datum
    assert_response :success
  end

  test "should update account_datum" do
    patch :update, id: @account_datum, account_datum: { amount: @account_datum.amount, category: @account_datum.category, name: @account_datum.name, user_id: @account_datum.user_id }
    assert_redirected_to account_datum_path(assigns(:account_datum))
  end

  test "should destroy account_datum" do
    assert_difference('AccountDatum.count', -1) do
      delete :destroy, id: @account_datum
    end

    assert_redirected_to account_data_path
  end
end
