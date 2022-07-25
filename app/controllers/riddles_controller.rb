class RiddlesController < ApplicationController
  def index
    @riddles = Riddle.all
  end

  def new
    @riddle = Riddle.new
  end

  def create
    @riddle = Riddle.new riddle_params
    Riddle.create riddle_params
    user = Riddle.find(last)
    user.user_id = @current_user
    user.save
    # How to set user_id default as @user.id
    redirect_to riddles_path
  end

  def edit
  end

  def show
  end

  private
  def riddle_params
    params.require(:riddle).permit(:question, :answer, :user_id)
  end
end