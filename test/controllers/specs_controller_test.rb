require 'test_helper'

class SpecsControllerTest < ActionController::TestCase
  setup do
    @spec = specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spec" do
    assert_difference('Spec.count') do
      post :create, spec: { category_id: @spec.category_id, name: @spec.name, promo_title: @spec.promo_title, value: @spec.value }
    end

    assert_redirected_to spec_path(assigns(:spec))
  end

  test "should show spec" do
    get :show, id: @spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spec
    assert_response :success
  end

  test "should update spec" do
    patch :update, id: @spec, spec: { category_id: @spec.category_id, name: @spec.name, promo_title: @spec.promo_title, value: @spec.value }
    assert_redirected_to spec_path(assigns(:spec))
  end

  test "should destroy spec" do
    assert_difference('Spec.count', -1) do
      delete :destroy, id: @spec
    end

    assert_redirected_to specs_path
  end
end
