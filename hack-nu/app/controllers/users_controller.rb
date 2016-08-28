class UsersController < ApplicationController
  def index; end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to edit_objective_path(Objective.last)
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:monthly_income, :shop,
     :gift, :education, :health, :services, :transport,
     :leisure, :electronics, :travel, :dressing)
  end
end
