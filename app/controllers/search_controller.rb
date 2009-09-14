class SearchController < ApplicationController
  def index
    @query = params[:query]
    @results = Verse.find_all_by_text(@query)
  end
end
