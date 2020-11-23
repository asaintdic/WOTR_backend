class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :update, :destroy]

  # GET /exercises
  def index
    @exercises = Exercise.all

    render json: @exercises
  end

  # GET /exercises/1
  def show
    @exercise = Exercise.find(params[:id])
    render json: ExerciseSerializer.new(@exercise)
  end

  # # POST /exercises
  def create
   
    @exercise = @workout.exercises.new(exercise_params)

    if @exercise.save
      render json: @exercise, status: :created, location: @exercise
    else
      render json:  {error: 'Error creating exercise'}
    end
  end

  # # PATCH/PUT /exercises/1
  # def update
  #   if @exercise.update(exercise_params)
  #     render json: @exercise
  #   else
  #     render json: @exercise.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /exercises/1
  def destroy
    @exercise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = WorkoutExercise.find(params[:workout_id])
    end

    # Only allow a trusted parameter "white list" through.
    def exercise_params
      params.require(:exercise).permit(:category, :exercise_name, :reps, :equipment, :workout_id)
    end
end
