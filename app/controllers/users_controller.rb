class UsersController < ApplicationController
  def my_page
    @user = current_user
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
  end

  #def user_params
    #params.require(:user).permit(:name, :sport_id, :image, :gender, :age, :introduction, :is_coach)
  #end

end
