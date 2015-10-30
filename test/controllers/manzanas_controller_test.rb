require 'test_helper'

class ManzanasControllerTest < ActionController::TestCase
  setup do
    @manzana = manzanas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manzanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manzana" do
    assert_difference('Manzana.count') do
      post :create, manzana: { nombre: @manzana.nombre }
    end

    assert_redirected_to manzana_path(assigns(:manzana))
  end

  test "should show manzana" do
    get :show, id: @manzana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manzana
    assert_response :success
  end

  test "should update manzana" do
    patch :update, id: @manzana, manzana: { nombre: @manzana.nombre }
    assert_redirected_to manzana_path(assigns(:manzana))
  end

  test "should destroy manzana" do
    assert_difference('Manzana.count', -1) do
      delete :destroy, id: @manzana
    end

    assert_redirected_to manzanas_path
  end
end
