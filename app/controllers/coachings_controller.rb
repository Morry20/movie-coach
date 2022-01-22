class CoachingsController < ApplicationController

  def create
    @coaching = Coaching.create(coaching_params)
    redirect_to movie_path(@coaching.movie_id)
  end

  def edit
    @coaching = Coaching.find(params[:id])
  end

  def update
    @coaching = Coaching.find(params[:id])
    @coaching.update(coaching_params)
    redirect_to movie_path(@coaching.movie.id)
  end
  
  private
  
  def coaching_params
    params.require(:coaching).permit(:movie_id, :evaluation, :comment)
  end

end
