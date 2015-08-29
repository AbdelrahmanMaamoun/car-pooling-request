require 'test_helper'

class CerpoolingrequestsControllerTest < ActionController::TestCase
  setup do
    @cerpoolingrequest = cerpoolingrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cerpoolingrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cerpoolingrequest" do
    assert_difference('Cerpoolingrequest.count') do
      post :create, cerpoolingrequest: { email: @cerpoolingrequest.email, password: @cerpoolingrequest.password, prefer_from: @cerpoolingrequest.prefer_from, prefer_to: @cerpoolingrequest.prefer_to, travel_id: @cerpoolingrequest.travel_id, user_id: @cerpoolingrequest.user_id }
    end

    assert_redirected_to cerpoolingrequest_path(assigns(:cerpoolingrequest))
  end

  test "should show cerpoolingrequest" do
    get :show, id: @cerpoolingrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cerpoolingrequest
    assert_response :success
  end

  test "should update cerpoolingrequest" do
    put :update, id: @cerpoolingrequest, cerpoolingrequest: { email: @cerpoolingrequest.email, password: @cerpoolingrequest.password, prefer_from: @cerpoolingrequest.prefer_from, prefer_to: @cerpoolingrequest.prefer_to, travel_id: @cerpoolingrequest.travel_id, user_id: @cerpoolingrequest.user_id }
    assert_redirected_to cerpoolingrequest_path(assigns(:cerpoolingrequest))
  end

  test "should destroy cerpoolingrequest" do
    assert_difference('Cerpoolingrequest.count', -1) do
      delete :destroy, id: @cerpoolingrequest
    end

    assert_redirected_to cerpoolingrequests_path
  end
end
