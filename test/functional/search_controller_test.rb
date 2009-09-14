require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  def test_get
    get :index
    assert_response :success
  end

  def test_query
    get :index, {:query => "God"}
  end
end
