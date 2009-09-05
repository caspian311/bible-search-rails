class SearchController < ApplicationController
  def index
    @query = params[:query]
    @results = ["blah", "blah blah"]
  end
end
