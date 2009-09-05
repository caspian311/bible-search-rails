class SearchController < ApplicationController
  def index
  end

  def results
    @query = params[:query]
    @results = ["blah", "blah blah"]
  end
end
