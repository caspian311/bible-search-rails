require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  def test_if_no_query_is_given_results_are_not_populated
    get :index

    assert_nil assigns(:results)
  end

   def test_if_empty_query_is_given_results_are_not_populated
    get :index, {:query => ""}

    assert_nil assigns(:results)
  end

  def test_if_query_is_given_relavent_results_are_populated
    get :index, {:query => "God"}

    assert_not_nil assigns(:results)
    assert_equal 2, assigns(:results).size
    search_results = assigns(:results)

    assert_not_nil find_by_text search_results, "in the beginning"
    assert_not_nil find_by_text search_results, "for God so loved"
  end

  def find_by_text(results, text)
    target = nil
    results.each do |result|
      if result.text.downcase.start_with?(text.downcase)
        target = result
        break
      end
    end
    return target
  end
end
