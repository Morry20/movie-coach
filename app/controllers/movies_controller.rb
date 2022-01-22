class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end


  def complete
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    @coach_name = User.find(Matching.find(params[:movie][:matching_id]).coach_id).name
    render 'movies/complete'
  end

  def index
    matchings = Matching.where(coach_id: current_user.id).or(Matching.where(user_id: current_user.id))
    @movies = Movie.where(matching_id: matchings.ids)
  end

  def show
    @movie = Movie.find(params[:id])
    @messages = @movie.messages
    @message = Message.new
    @coaching = Coaching.new
  end

  def edit
  end
  
  
  private
  def movie_params
    params.require(:movie).permit(:matching_id, :movie, :request, :user_id)
  end

end
