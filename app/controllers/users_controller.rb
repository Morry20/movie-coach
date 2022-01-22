class UsersController < ApplicationController
  before_action :authenticate_user!,except: [:coach_index]

  def my_page
    @user = current_user
    @coach_evaluations = Matching.where(coach_id: @user.id).map(&:coach_evaluation).compact
    @data = @user.movies.joins(:coaching).where("coachings.created_at>#{3.month.ago.strftime('%Y-%m-%d')}").group_by_week('coachings.created_at').average(:evaluation)
    # @select_month = [3.month.ago.strftime('%Y-%m'),2.month.ago.strftime('%Y-%m'),Date.today.strftime('%Y-%m')]

  end

  def index
    @users = User.where(is_coach: false)
  end

  def search
    @users = User.where(is_coach: false).search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

  def coach_index
    @coaches = User.where(is_coach: true, sport_id: params[:sport_id])
    @sport_id = params[:sport_id]
  end

  def coach_search
    @coaches = User.where(is_coach: true, sport_id: params[:sport_id]).search(params[:keyword])
    @keyword = params[:keyword]
    @sport_id = params[:sport_id]
    render "coach_index"
  end

  def show
    @user = User.find(params[:id])
    @coach_evaluations = Matching.where(coach_id: @user.id).map(&:coach_evaluation).compact
    @coach_evaluation = CoachEvaluation.new
  end


end
