require 'test_helper'

class SellreportsControllerTest < ActionController::TestCase
  setup do
    @sellreport = sellreports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellreports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellreport" do
    assert_difference('Sellreport.count') do
      post :create, sellreport: { fecha: @sellreport.fecha, sell_id: @sellreport.sell_id, total: @sellreport.total }
    end

    assert_redirected_to sellreport_path(assigns(:sellreport))
  end

  test "should show sellreport" do
    get :show, id: @sellreport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellreport
    assert_response :success
  end

  test "should update sellreport" do
    patch :update, id: @sellreport, sellreport: { fecha: @sellreport.fecha, sell_id: @sellreport.sell_id, total: @sellreport.total }
    assert_redirected_to sellreport_path(assigns(:sellreport))
  end

  test "should destroy sellreport" do
    assert_difference('Sellreport.count', -1) do
      delete :destroy, id: @sellreport
    end

    assert_redirected_to sellreports_path
  end
end
