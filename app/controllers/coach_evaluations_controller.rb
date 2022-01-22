class CoachEvaluationsController < ApplicationController
  
  def create
    @coach_evaluation = CoachEvaluation.create(params.require(:coach_evaluation).permit(:matching_id, :evaluation, :title, :reason))
    redirect_to user_path(@coach_evaluation.matching.coach_id)
  end
  
end
