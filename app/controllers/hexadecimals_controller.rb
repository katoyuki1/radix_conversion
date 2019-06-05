class HexadecimalsController < ApplicationController
  def question
    @hexadecimal = Hexadecimal.new
    @question = rand(20)
    @hexadecimal.correct_answer = @question
    @question = @question.to_s(16)
  end

  def answer
    @hexadecimal = Hexadecimal.new(hexadecimal_params)
    if @hexadecimal.answer == @hexadecimal.correct_answer
      render :answer, notice: "正解"
    else
      render :answer, notice: "不正解"
    end
  end

  private

  def hexadecimal_params
    params.require(:hexadecimal).permit(:answer, :correct_answer)
  end
end
