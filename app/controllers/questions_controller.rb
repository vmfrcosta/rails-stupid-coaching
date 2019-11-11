class QuestionsController < ApplicationController
  # frozen_string_literal: true

  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = if @ask[-1] == '?'
                'Silly question, get dressed and go to work!'
              elsif @ask == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
