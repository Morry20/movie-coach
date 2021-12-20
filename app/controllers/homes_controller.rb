class HomesController < ApplicationController

  def top
    @sports = Sport.all
  end

end
