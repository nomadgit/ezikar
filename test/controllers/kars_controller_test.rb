require 'test_helper'

class KarsControllerTest < ActionController::TestCase
  setup do
    @kar = kars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kar" do
    assert_difference('Kar.count') do
      post :create, kar: { description: @kar.description, location: @kar.location, title: @kar.title }
    end

    assert_redirected_to kar_path(assigns(:kar))
  end

  test "should show kar" do
    get :show, id: @kar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kar
    assert_response :success
  end

  test "should update kar" do
    patch :update, id: @kar, kar: { description: @kar.description, location: @kar.location, title: @kar.title }
    assert_redirected_to kar_path(assigns(:kar))
  end

  test "should destroy kar" do
    assert_difference('Kar.count', -1) do
      delete :destroy, id: @kar
    end

    assert_redirected_to kars_path
  end
end
