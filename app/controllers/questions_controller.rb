class QuestionsController < ApplicationController

  def ask

  end

  def answer
  @user_answer = params[:question]
  @coach_answer = ""

    if @user_answer.downcase == "I am going to work right now!".downcase
      return "Great!"
    elsif @user_answer.include? "?"
      return @coach_answer = "Silly question, get dressed and go to work!"
    else
      return @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end

