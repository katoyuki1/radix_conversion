class BinariesController < ApplicationController
  def question
    @binary = Binary.new
    @question = rand(10)
    @binary.correct_answer = @question
    @question = @question.to_s(2)
  end

  def answer
    @binary = Binary.new(binary_params)
    if @binary.answer == @binary.correct_answer
      render :answer, notice: "正解"
    else
      render :answer, notice: "不正解"
    end
  end

  private

  def binary_params
    params.require(:binary).permit(:answer, :correct_answer)
  end
end
