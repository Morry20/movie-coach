class MatchingsController < ApplicationController

  def index
    @matchings = Matching.all
  end

  def new
    @matching = Matching.new
  end

  def create
    @matching = Matching.new(matching_params)
    @matching.save
    redirect_to matchings_path
  end

  def show
    @matching = Matching.find(params[:id])
  end

  def update
    matching= Matching.find(params[:id])
    matching.update(matching_params)
    redirect_to matchings_path
  end

  private

   def matching_params
      params.require(:matching).permit(:user_id, :coach_id, :approval, :goal, :how, :comment, :reply)
   end

end
