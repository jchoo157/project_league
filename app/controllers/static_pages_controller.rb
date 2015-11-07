class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def matches
    @user = User.new(username: user_params[:name])
  end

  def help
  end

  def champions
  end

  def champion_info
  end

  private

  def user_params
    params.require(:summoner).permit(:name)
  end
end
