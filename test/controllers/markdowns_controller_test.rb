require 'test_helper'

class MarkdownsControllerTest < ActionController::TestCase
  setup do
    @markdown = markdowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markdowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create markdown" do
    assert_difference('Markdown.count') do
      post :create, markdown: { content: @markdown.content, title: @markdown.title }
    end

    assert_redirected_to markdown_path(assigns(:markdown))
  end

  test "should show markdown" do
    get :show, id: @markdown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @markdown
    assert_response :success
  end

  test "should update markdown" do
    patch :update, id: @markdown, markdown: { content: @markdown.content, title: @markdown.title }
    assert_redirected_to markdown_path(assigns(:markdown))
  end

  test "should destroy markdown" do
    assert_difference('Markdown.count', -1) do
      delete :destroy, id: @markdown
    end

    assert_redirected_to markdowns_path
  end
end
