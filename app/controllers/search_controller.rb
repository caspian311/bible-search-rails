class SearchController < ApplicationController
  def index
    @query = params[:query]
    if (@query != nil && !@query.empty?)
      @results = Verse.find(:all, :conditions => ["text like ?", "%#{@query}%"])
    end
  end
end
