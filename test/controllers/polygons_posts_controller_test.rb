require "test_helper"

class PolygonsPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polygons_post = polygons_posts(:one)
  end

  test "should get index" do
    get polygons_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_polygons_post_url
    assert_response :success
  end

  test "should create polygons_post" do
    assert_difference('PolygonsPost.count') do
      post polygons_posts_url, params: { polygons_post: { body: @polygons_post.body, title: @polygons_post.title } }
    end

    assert_redirected_to polygons_post_url(PolygonsPost.last)
  end

  test "should show polygons_post" do
    get polygons_post_url(@polygons_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_polygons_post_url(@polygons_post)
    assert_response :success
  end

  test "should update polygons_post" do
    patch polygons_post_url(@polygons_post), params: { polygons_post: { body: @polygons_post.body, title: @polygons_post.title } }
    assert_redirected_to polygons_post_url(@polygons_post)
  end

  test "should destroy polygons_post" do
    assert_difference('PolygonsPost.count', -1) do
      delete polygons_post_url(@polygons_post)
    end

    assert_redirected_to polygons_posts_url
  end
end
