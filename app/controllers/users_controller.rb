class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def coach_index
    @coaches = User.where(is_coach: true, sport_id: params[:sport_id])
    @sport_id = params[:sport_id]

  end

  def search
    @coaches = User.where(is_coach: true, sport_id: params[:sport_id]).search(params[:keyword])
    @keyword = params[:keyword]
    @sport_id = params[:sport_id]
    render "coach_index"
  end

  #def user_params
    #params.require(:user).permit(:name, :sport_id, :image, :gender, :age, :introduction, :is_coach)
  #end

end
