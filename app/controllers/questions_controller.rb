class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # the input from user will be stored inside params to the key name=question
    @question = params[:question]
    if @question.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work"
    end
  end
end
