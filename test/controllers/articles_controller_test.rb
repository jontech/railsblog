require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

  def setup
    @article = articles(:one)
  end

  test "get new article form" do
    get :new
    assert_response :success
  end

  test "index" do
    get :index
    assert_response :success
  end

  test "create article" do
    post :create, article: {title: "hello", text: "footext"}
    assert_response :redirect
    assert_equal Article.count, 3
    puts Comment.find()
  end

  test "get one article" do
    get :show, id: @article
    assert_response :success
  end

end
