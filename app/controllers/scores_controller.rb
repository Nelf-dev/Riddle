class ScoresController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @riddle = Riddle.find params[:id] #associated RIDDLES INFO
    @user = User.all #make it so that only users who played show up on scores
    @scores = Score.all.order("point")
  end
end
