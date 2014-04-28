require 'test_helper'

class UjumbesControllerTest < ActionController::TestCase
  setup do
    @ujumbe = ujumbes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ujumbes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ujumbe" do
    assert_difference('Ujumbe.count') do
      post :create, ujumbe: { date: @ujumbe.date, description: @ujumbe.description, link: @ujumbe.link, private: @ujumbe.private, theme: @ujumbe.theme, title: @ujumbe.title, type: @ujumbe.type }
    end

    assert_redirected_to ujumbe_path(assigns(:ujumbe))
  end

  test "should show ujumbe" do
    get :show, id: @ujumbe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ujumbe
    assert_response :success
  end

  test "should update ujumbe" do
    patch :update, id: @ujumbe, ujumbe: { date: @ujumbe.date, description: @ujumbe.description, link: @ujumbe.link, private: @ujumbe.private, theme: @ujumbe.theme, title: @ujumbe.title, type: @ujumbe.type }
    assert_redirected_to ujumbe_path(assigns(:ujumbe))
  end

  test "should destroy ujumbe" do
    assert_difference('Ujumbe.count', -1) do
      delete :destroy, id: @ujumbe
    end

    assert_redirected_to ujumbes_path
  end
end
