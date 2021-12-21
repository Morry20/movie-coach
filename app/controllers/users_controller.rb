class UsersController < ApplicationController
  def show
    @user = current_user
  end
  
  def coach_index
    @coaches = (User.is_coach == true).all
  end
end
