class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = 'Nothing asked yet'
    if params[:question]
      if params[:question].include? "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif params[:question] == 'I\'m going to work'
        @answer = "Great!"
      else
        @answer = ' I don\'t care, get dressed and go to work!'
      end
    end
  end
end
