require 'test_helper'

class UntappedBeersControllerTest < ActionController::TestCase
  setup do
    @untapped_beer = untapped_beers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:untapped_beers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create untapped_beer" do
    assert_difference('UntappedBeer.count') do
      post :create, untapped_beer: { beer_style: @untapped_beer.beer_style, description: @untapped_beer.description, rating_score: @untapped_beer.rating_score, untapped_id: @untapped_beer.untapped_id, updated: @untapped_beer.updated }
    end

    assert_redirected_to untapped_beer_path(assigns(:untapped_beer))
  end

  test "should show untapped_beer" do
    get :show, id: @untapped_beer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @untapped_beer
    assert_response :success
  end

  test "should update untapped_beer" do
    patch :update, id: @untapped_beer, untapped_beer: { beer_style: @untapped_beer.beer_style, description: @untapped_beer.description, rating_score: @untapped_beer.rating_score, untapped_id: @untapped_beer.untapped_id, updated: @untapped_beer.updated }
    assert_redirected_to untapped_beer_path(assigns(:untapped_beer))
  end

  test "should destroy untapped_beer" do
    assert_difference('UntappedBeer.count', -1) do
      delete :destroy, id: @untapped_beer
    end

    assert_redirected_to untapped_beers_path
  end
end
