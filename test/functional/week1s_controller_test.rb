require 'test_helper'

class Week1sControllerTest < ActionController::TestCase
  setup do
    @week1 = week1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:week1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week1" do
    assert_difference('Week1.count') do
      post :create, week1: { di1: @week1.di1, fri1: @week1.fri1, mon1: @week1.mon1, sat1: @week1.sat1, sun1: @week1.sun1, thu1: @week1.thu1, tue1: @week1.tue1, wed1: @week1.wed1 }
    end

    assert_redirected_to week1_path(assigns(:week1))
  end

  test "should show week1" do
    get :show, id: @week1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @week1
    assert_response :success
  end

  test "should update week1" do
    put :update, id: @week1, week1: { di1: @week1.di1, fri1: @week1.fri1, mon1: @week1.mon1, sat1: @week1.sat1, sun1: @week1.sun1, thu1: @week1.thu1, tue1: @week1.tue1, wed1: @week1.wed1 }
    assert_redirected_to week1_path(assigns(:week1))
  end

  test "should destroy week1" do
    assert_difference('Week1.count', -1) do
      delete :destroy, id: @week1
    end

    assert_redirected_to week1s_path
  end
end
