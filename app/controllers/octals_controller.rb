class OctalsController < ApplicationController
  def question
    @octal = Octal.new
    @question = rand(20)
    @octal.correct_answer = @question
    @question = @question.to_s(8)
  end

  def answer
    @octal = Octal.new(octal_params)
    if @octal.answer == @octal.correct_answer
      render :answer, notice: "正解"
    else
      render :answer, notice: "不正解"
    end
  end

  private

  def octal_params
    params.require(:octal).permit(:answer, :correct_answer)
  end

end
