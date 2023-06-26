class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer =
      if @question == "I'm going to work."
        @answer = 'great'
      elsif @question.to_s.ends_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work."
      end
  end
end
