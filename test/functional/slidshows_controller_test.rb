require 'test_helper'

class SlidshowsControllerTest < ActionController::TestCase
  setup do
    @slidshow = slidshows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slidshows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slidshow" do
    assert_difference('Slidshow.count') do
      post :create, slidshow: {  }
    end

    assert_redirected_to slidshow_path(assigns(:slidshow))
  end

  test "should show slidshow" do
    get :show, id: @slidshow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slidshow
    assert_response :success
  end

  test "should update slidshow" do
    put :update, id: @slidshow, slidshow: {  }
    assert_redirected_to slidshow_path(assigns(:slidshow))
  end

  test "should destroy slidshow" do
    assert_difference('Slidshow.count', -1) do
      delete :destroy, id: @slidshow
    end

    assert_redirected_to slidshows_path
  end
end
