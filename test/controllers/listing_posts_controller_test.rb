require 'test_helper'

class ListingPostsControllerTest < ActionController::TestCase
  setup do
    @listing_post = listing_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listing_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing_post" do
    assert_difference('ListingPost.count') do
      post :create, listing_post: { Content: @listing_post.Content, Title: @listing_post.Title }
    end

    assert_redirected_to listing_post_path(assigns(:listing_post))
  end

  test "should show listing_post" do
    get :show, id: @listing_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing_post
    assert_response :success
  end

  test "should update listing_post" do
    patch :update, id: @listing_post, listing_post: { Content: @listing_post.Content, Title: @listing_post.Title }
    assert_redirected_to listing_post_path(assigns(:listing_post))
  end

  test "should destroy listing_post" do
    assert_difference('ListingPost.count', -1) do
      delete :destroy, id: @listing_post
    end

    assert_redirected_to listing_posts_path
  end
end
