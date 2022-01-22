class SportsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :search]

  def index
    @sports = Sport.all
  end

  def search
    @sports = Sport.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

end
