class SearchController < ApplicationController
  def index
    @query = params[:query]
    @results = Verse.find(:all, :conditions => ["text like ?", "%#{@query}%"])
  end
end
