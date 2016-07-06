require 'test_helper'

class TodayitemsControllerTest < ActionController::TestCase
  setup do
    @todayitem = todayitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todayitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todayitem" do
    assert_difference('Todayitem.count') do
      post :create, todayitem: { calorie: @todayitem.calorie, name: @todayitem.name, photo: @todayitem.photo, tdate: @todayitem.tdate, tot_num: @todayitem.tot_num, tot_rating: @todayitem.tot_rating }
    end

    assert_redirected_to todayitem_path(assigns(:todayitem))
  end

  test "should show todayitem" do
    get :show, id: @todayitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todayitem
    assert_response :success
  end

  test "should update todayitem" do
    patch :update, id: @todayitem, todayitem: { calorie: @todayitem.calorie, name: @todayitem.name, photo: @todayitem.photo, tdate: @todayitem.tdate, tot_num: @todayitem.tot_num, tot_rating: @todayitem.tot_rating }
    assert_redirected_to todayitem_path(assigns(:todayitem))
  end

  test "should destroy todayitem" do
    assert_difference('Todayitem.count', -1) do
      delete :destroy, id: @todayitem
    end

    assert_redirected_to todayitems_path
  end
end
