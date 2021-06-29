class QuestionsController < ApplicationController

  def ask

  end

  def answer
  @user_answer = params[:question]
  @stupid_answer = ""

    if @user_answer.downcase == "I am going to work right now!".downcase
      return ""
    elsif @user_answer.include? "?"
      return @stupid_answer = "Silly question, get dressed and go to work!"
    else
      return @stupid_answer = "I don't care, get dressed and go to work!"
    end
  end
end

