require 'test_helper'

class CategprodsControllerTest < ActionController::TestCase
  setup do
    @categprod = categprods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categprods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categprod" do
    assert_difference('Categprod.count') do
      post :create, categprod: { type: @categprod.type }
    end

    assert_redirected_to categprod_path(assigns(:categprod))
  end

  test "should show categprod" do
    get :show, id: @categprod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categprod
    assert_response :success
  end

  test "should update categprod" do
    patch :update, id: @categprod, categprod: { type: @categprod.type }
    assert_redirected_to categprod_path(assigns(:categprod))
  end

  test "should destroy categprod" do
    assert_difference('Categprod.count', -1) do
      delete :destroy, id: @categprod
    end

    assert_redirected_to categprods_path
  end
end
