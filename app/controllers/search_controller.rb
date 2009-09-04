class SearchController < ApplicationController
  def index
    render :text => <<END
      this is the beginning of my text...<br/>
      this is another line
      this is yet another line
      and still another
END
  end
end
