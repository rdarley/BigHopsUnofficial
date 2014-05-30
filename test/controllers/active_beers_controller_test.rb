require 'test_helper'

class ActiveBeersControllerTest < ActionController::TestCase
  setup do
    @active_beer = active_beers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_beers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_beer" do
    assert_difference('ActiveBeer.count') do
      post :create, active_beer: { Beer_id: @active_beer.Beer_id, Location_id: @active_beer.Location_id }
    end

    assert_redirected_to active_beer_path(assigns(:active_beer))
  end

  test "should show active_beer" do
    get :show, id: @active_beer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_beer
    assert_response :success
  end

  test "should update active_beer" do
    patch :update, id: @active_beer, active_beer: { Beer_id: @active_beer.Beer_id, Location_id: @active_beer.Location_id }
    assert_redirected_to active_beer_path(assigns(:active_beer))
  end

  test "should destroy active_beer" do
    assert_difference('ActiveBeer.count', -1) do
      delete :destroy, id: @active_beer
    end

    assert_redirected_to active_beers_path
  end
end
