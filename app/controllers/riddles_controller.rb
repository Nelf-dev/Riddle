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
    @current_user.riddles << riddle
    redirect_to riddles_path
  end

  def edit
    @riddle = Riddle.find params[:id]
  end

  def update
    riddle = Riddle.find params[:id]
    riddle.update riddle_params
    redirect_to riddle
  end

  def show
    @riddle = Riddle.find params[:id]
    session[:start_time] = Time.new #once user presses link of the show link it logs a time
  end

  def answer
    riddle_answer = Riddle.find(params[:id]).answer
    riddle_id = Riddle.find(params[:id])
    if riddle_answer.downcase == params[:answer].downcase #if win
      score = Time.new - session[:start_time].to_datetime # when answered correctly it subtracts the time now from when they started.
      new_score = Score.new(:point => score, :user_id => @current_user.id, :riddle_id => riddle_id.id)
      new_score.save
      redirect_to score_path #goes into scores#show for the particular riddle
    else #if loss
      flash_alert = "Wrong! Guess again" #this does not work TODO
    end
  end

  def destroy
    riddle = Riddle.find params[:id]
    riddle.destroy
    redirect_to riddles_path
  end

  private
  def riddle_params
    params.require(:riddle).permit(:name, :question, :answer, :user_id, :answer)
  end
end