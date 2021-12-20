class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def search
    @sports = Sport.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

end
