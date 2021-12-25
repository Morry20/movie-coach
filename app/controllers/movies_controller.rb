class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def complete
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    #redirect_to movies_complete_path
    @coach_name = User.find(Matching.find(params[:movie][:matching_id]).coach_id).name
    render 'movies/complete'
  end

  def movie_params
    params.require(:movie).permit(:matching_id, :movie, :request)
  end

end
