class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @questions = params[:answer]
    if @questions == 'I am going to work right now!'
      @answer = @answers[0]
    elsif @questions.include?('?')
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
