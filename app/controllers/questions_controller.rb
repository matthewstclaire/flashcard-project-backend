class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    @questions = Question.all

    render json: @questions
  end

  # GET /questions/1
  def show
    render json: @question
  end

  # POST /questions
  def create
    @question = Question.new(question_params)
    @question.category_id = params[:category_id].to_i
    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    render json:{message: 'successfully deleted'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find_by(id:params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:category_id, :body, :answer)
    end
end
