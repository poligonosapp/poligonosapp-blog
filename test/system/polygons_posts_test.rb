require "application_system_test_case"

class PolygonsPostsTest < ApplicationSystemTestCase
  setup do
    @polygons_post = polygons_posts(:one)
  end

  test "visiting the index" do
    visit polygons_posts_url
    assert_selector "h1", text: "Polygons Posts"
  end

  test "creating a Polygons post" do
    visit polygons_posts_url
    click_on "New Polygons Post"

    fill_in "Body", with: @polygons_post.body
    fill_in "Title", with: @polygons_post.title
    click_on "Create Polygons post"

    assert_text "Polygons post was successfully created"
    click_on "Back"
  end

  test "updating a Polygons post" do
    visit polygons_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @polygons_post.body
    fill_in "Title", with: @polygons_post.title
    click_on "Update Polygons post"

    assert_text "Polygons post was successfully updated"
    click_on "Back"
  end

  test "destroying a Polygons post" do
    visit polygons_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Polygons post was successfully destroyed"
  end
end
