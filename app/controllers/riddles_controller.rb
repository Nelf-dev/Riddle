class RiddlesController < ApplicationController
  before_action :check_for_login

  def index
    @riddles = Riddle.all
  end

  def new
    @riddle = Riddle.new
  end

  def create
    riddle = Riddle.create riddle_params
    @current_user.riddles << riddle #associates the riddle into the current_user
    redirect_to riddles_path
  end

  def edit
  end

  def show
    @riddle = Riddle.find params[:id]
  end

  private
  def riddle_params
    params.require(:riddle).permit(:name, :question, :answer, :user_id)
  end
end