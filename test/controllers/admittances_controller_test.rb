require 'test_helper'

class AdmittancesControllerTest < ActionController::TestCase
  setup do
    @admittance = admittances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admittances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admittance" do
    assert_difference('Admittance.count') do
      post :create, admittance: { access_to: @admittance.access_to, description: @admittance.description }
    end

    assert_redirected_to admittance_path(assigns(:admittance))
  end

  test "should show admittance" do
    get :show, id: @admittance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admittance
    assert_response :success
  end

  test "should update admittance" do
    patch :update, id: @admittance, admittance: { access_to: @admittance.access_to, description: @admittance.description }
    assert_redirected_to admittance_path(assigns(:admittance))
  end

  test "should destroy admittance" do
    assert_difference('Admittance.count', -1) do
      delete :destroy, id: @admittance
    end

    assert_redirected_to admittances_path
  end
end
