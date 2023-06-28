class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer =
      if @question.blank?
        @answer = "I can't hear you?"
      elsif @question == "I'm going to work."
        @answer = 'great'
      elsif @question.include?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work."
      end
  end
end
