require 'test_helper'

class TeamplayersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamplayers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamplayer" do
    assert_difference('Teamplayer.count') do
      post :create, :teamplayer => { }
    end

    assert_redirected_to teamplayer_path(assigns(:teamplayer))
  end

  test "should show teamplayer" do
    get :show, :id => teamplayers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => teamplayers(:one).to_param
    assert_response :success
  end

  test "should update teamplayer" do
    put :update, :id => teamplayers(:one).to_param, :teamplayer => { }
    assert_redirected_to teamplayer_path(assigns(:teamplayer))
  end

  test "should destroy teamplayer" do
    assert_difference('Teamplayer.count', -1) do
      delete :destroy, :id => teamplayers(:one).to_param
    end

    assert_redirected_to teamplayers_path
  end
end
